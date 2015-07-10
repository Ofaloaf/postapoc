Samplers = 
{
	TerrainDiffuse = {
		Index = 0;
		MagFilter = "Linear";
		MipFilter = "Linear";
		MinFilter = "Linear";
		AddressU = "Wrap";
		AddressV = "Wrap";
	},
	HeightNormal = {
		Index = 1;
		MagFilter = "Linear";
		MipFilter = "Linear";
		MinFilter = "Linear";
		AddressU = "Wrap";
		AddressV = "Wrap";
	},
	TerrainColorTint = {
		Index = 2;
		MagFilter = "Linear";
		MipFilter = "Linear";
		MinFilter = "Linear";
		AddressU = "Wrap";
		AddressV = "Wrap";
	},
	TerrainNormal = {
		Index = 3;
		MagFilter = "Linear";
		MipFilter = "Point";
		MinFilter = "Linear";
		AddressU = "Wrap";
		AddressV = "Wrap";
	},
	
	TerrainIDMap = {
		Index = 4;
		MagFilter = "Point";
		MipFilter = "None";
		MinFilter = "Point";
		AddressU = "Clamp";
		AddressV = "Clamp";
	},
	ProvinceSecondaryColorMap = {
		Index = 5;
		MagFilter = "Linear";
		MipFilter = "Linear";
		MinFilter = "Linear";
		AddressU = "Wrap";
		AddressV = "Wrap";
	},
	FoWTexture = {
		Index = 6;
		MagFilter = "Linear";
		MipFilter = "Linear";
		MinFilter = "Linear";
		AddressU = "Wrap";
		AddressV = "Wrap";
	},
	FoWDiffuse = {
		Index = 7;
		MagFilter = "Linear";
		MipFilter = "Linear";
		MinFilter = "Linear";
		AddressU = "Wrap";
		AddressV = "Wrap";
	},
	OccupationMask = {
		Index = 8;
		MagFilter = "Linear";
		MipFilter = "Linear";
		MinFilter = "Linear";
		AddressU = "Wrap";
		AddressV = "Wrap";
	},
	ProvinceColorMap = {
		Index = 9;
		MagFilter = "Linear";
		MipFilter = "Linear";
		MinFilter = "Linear";
		AddressU = "Clamp";
		AddressV = "Clamp";
	},
	ProvinceSecondaryColorMapPoint = {
		Index = 10;
		MagFilter = "Point";
		MipFilter = "Point";
		MinFilter = "Point";
		AddressU = "Wrap";
		AddressV = "Wrap";
	}
}

FallbackSamplers = 
{
    TerrainDiffuse = {
    	Index = 0;
    	MagFilter = "Linear";
    	MipFilter = "Linear";
    	MinFilter = "Linear";
    	AddressU = "Wrap";
    	AddressV = "Wrap";
    	MipMapMaxLod = 2;
    	MipMapMinLod = 2;
    	},
}


Includes = {
	"standardfuncsgfx.fxh",
	"pdxmap.fxh"
}


BlendState =
{
	ZWriteEnable = true;
	ZEnable = true;
	WriteMask = "RED|GREEN|BLUE";
	BlendEnable = false;
	AlphaTest = false;
}
Defines = { } -- Comma separated defines ie. "USE_SIMPLE_LIGHTS", "GUI"

DeclareShared( [[

static const float3 GREYIFY = float3( 0.212671, 0.715160, 0.072169 );
static const float TERRAINTILEFREQ = 128.0f;
static const float NUM_TILES = 4.0f;
static const float TEXELS_PER_TILE = 512.0f;
static const float ATLAS_TEXEL_POW2_EXPONENT= 11.0f;
static const float WATER_HEIGHT_RECP_SQUARED = ( 1.0f / 19.0f ) * ( 1.0f / 19.0f );
static const float TERRAIN_WATER_CLIP_HEIGHT = 3.0f;
static const float TERRAIN_UNDERWATER_CLIP_HEIGHT = 3.0f;


float mipmapLevel( float2 uv )
{

#ifdef PDX_OPENGL

#ifdef NO_SHADER_TEXTURE_LOD
	return 1.0f;
#else

#ifdef PIXEL_SHADER
	float dx = fwidth( uv.x * TEXELS_PER_TILE );
	float dy = fwidth( uv.y * TEXELS_PER_TILE );
	float d = max( dot(dx, dx), dot(dy, dy) );
	return 0.5 * log2( d );
#else
	return 3.0f;
#endif // PIXEL_SHADER

#endif // NO_SHADER_TEXTURE_LOD

#else
    float2 dx = ddx( uv * TEXELS_PER_TILE );
    float2 dy = ddy( uv * TEXELS_PER_TILE );
    float d = max( dot(dx, dx), dot(dy, dy) );
    return 0.5f * log2( d );
#endif // PDX_OPENGL
}

float4 sample_terrain( float IndexU, float IndexV, float2 vTileRepeat, float vMipTexels, float lod )
{
	vTileRepeat = frac( vTileRepeat );
#ifdef NO_SHADER_TEXTURE_LOD
	vTileRepeat *= 0.96;
	vTileRepeat += 0.02;
#endif

	float vTexelsPerTile = vMipTexels / NUM_TILES;

	vTileRepeat *= ( vTexelsPerTile - 1.0f ) / vTexelsPerTile;
	return float4( ( float2( IndexU, IndexV ) + vTileRepeat ) / NUM_TILES + 0.5f / vMipTexels, 0.0f, lod );
}

void calculate_index( float4 IDs, out float4 IndexU, out float4 IndexV, out float vAllSame )
{
	IDs *= 255.0f;
	vAllSame = saturate( IDs.z - 98.0f ); // we've added 100 to first if all IDs are same
	IDs.z -= vAllSame * 100.0f;

	IndexV = trunc( ( IDs + 0.5f ) / NUM_TILES );
	IndexU = trunc( IDs - ( IndexV * NUM_TILES ) + 0.5f );
}

float3 calculate_secondary( float2 uv, float3 vColor, float2 vPos )
{
	float4 vSecondary = float4( 
		tex2D( ProvinceSecondaryColorMapPoint, uv ).rgb, 
		tex2D( ProvinceSecondaryColorMap, uv ).a );

	const int nDivisor = 6;
	float3 vTest = vSecondary.rgb * 255;
	int3 RedParts = int3( vTest / float( nDivisor * nDivisor ) );
	vTest -= RedParts * ( nDivisor * nDivisor );

	int3 GreenParts = int3( vTest / nDivisor );
	vTest -= GreenParts * nDivisor;

	int3 BlueParts = int3( vTest );

	float4 vMask = tex2D( OccupationMask, vPos / 8.0f ).rgba;
	float3 vSecondColor = 
		  float3( RedParts.x, GreenParts.x, BlueParts.x ) * vMask.r
		+ float3( RedParts.y, GreenParts.y, BlueParts.y ) * vMask.g
		+ float3( RedParts.z, GreenParts.z, BlueParts.z ) * vMask.b;

	vSecondary.a -= 0.5f * saturate( saturate( frac( vPos.x / 2.0f ) - 0.7f ) * 10000.0f );
	vSecondary.a = saturate( saturate( vSecondary.a ) * 3.0f ) * vMask.a;

	return vColor * ( 1.0f - vSecondary.a ) + ( vSecondColor / nDivisor ) * vSecondary.a;
}

]] )

AddSamplers()

DeclareVertex( [[
struct VS_INPUT_TERRAIN_NOTEXTURE
{
    float4 position			: POSITION;
	float2 height			: TEXCOORD0;
};
]] )

DeclareVertex( [[
struct VS_OUTPUT_TERRAIN
{
    float4 position			: POSITION;
	float2 uv				: TEXCOORD0;
	float2 uv2				: TEXCOORD1;
	float3 prepos 			: TEXCOORD2;
	float4 vScreenCoord		: TEXCOORD3;
};
]] )

terrain = {
	VertexShader = "VertexShader";
	PixelShader = "PixelShaderTerrain";
	ShaderModel = 3;
}

terrain_color = {
	VertexShader = "VertexShader";
	PixelShader = "PixelShaderColor";
	ShaderModel = 3;
}

underwater = {
	VertexShader = "VertexShader";
	PixelShader = "PixelShaderUnderwater";
	ShaderModel = 3;	
}

DeclareShader( "VertexShader", [[
VS_OUTPUT_TERRAIN main( const VS_INPUT_TERRAIN_NOTEXTURE VertexIn )
{
	VS_OUTPUT_TERRAIN VertexOut;
	
	float2 pos = VertexIn.position.xy * QuadOffset_Scale_IsDetail.z + QuadOffset_Scale_IsDetail.xy;

	float vSatPosZ = saturate( VertexIn.position.z ); // VertexIn.position.z can have a value [0-4], if != 0 then we shall displace vertex
	float vUseAltHeight = vSatPosZ * vSnap[ int( VertexIn.position.z - 1.0f ) ]; // the snap values are set to either 0 or 1 before each draw call to enable/disable snapping due to LOD

	pos += vUseAltHeight 
		* float2( 1.0f - VertexIn.position.w, VertexIn.position.w ) // VertexIn.position.w determines offset direction
		* QuadOffset_Scale_IsDetail.z; // and of course we need to scale it to the same LOD

	VertexOut.uv = float2( ( pos.x + 0.5f ) / vMapSize.x,  ( pos.y + 0.5f ) / vMapSize.y );
	VertexOut.uv2.x = ( pos.x + 0.5f ) / vMapSize.x;
	VertexOut.uv2.y = ( pos.y + 0.5f - vMapSize.y ) / -vMapSize.y;	
	
	float vHeight = VertexIn.height.x * ( 1.0f - vUseAltHeight ) + VertexIn.height.y * vUseAltHeight;
	vHeight *= 0.01f;

	VertexOut.prepos = float3( pos.x, vHeight, pos.y );
	VertexOut.position = mul( float4( VertexOut.prepos.x, VertexOut.prepos.y, VertexOut.prepos.z, 1.0f ), ViewProjectionMatrix );
	
	// Output the screen-space texture coordinates
	VertexOut.vScreenCoord.x = ( VertexOut.position.x * 0.5 + VertexOut.position.w * 0.5 );
	VertexOut.vScreenCoord.y = ( VertexOut.position.w * 0.5 - VertexOut.position.y * 0.5 );
#ifdef PDX_OPENGL
	VertexOut.vScreenCoord.y = -VertexOut.vScreenCoord.y;
#endif	
	VertexOut.vScreenCoord.z = VertexOut.position.w;
	VertexOut.vScreenCoord.w = VertexOut.position.w;	
	
	return VertexOut;
}

]] )

DeclareShader( "PixelShaderTerrain", [[

float4 main( VS_OUTPUT_TERRAIN Input ) : COLOR
{
	clip( Input.prepos.y + TERRAIN_WATER_CLIP_HEIGHT - WATER_HEIGHT );
	float2 vOffsets = float2( -0.5f / vMapSize.x, -0.5f / vMapSize.y );
	
	float vAllSame;
	float4 IndexU;
	float4 IndexV;
	calculate_index( tex2D( TerrainIDMap, Input.uv + vOffsets.xy ), IndexU, IndexV, vAllSame );
	
	float2 vTileRepeat = Input.uv2 * TERRAINTILEFREQ;
	vTileRepeat.x *= vMapSize.x/vMapSize.y;
	
	float lod = clamp( trunc( mipmapLevel( vTileRepeat ) - 0.5f ), 0.0f, 6.0f );
	float vMipTexels = pow( 2.0f, ATLAS_TEXEL_POW2_EXPONENT - lod );

	float3 normal = normalize( tex2D( HeightNormal, Input.uv2 * vMapSize.zw ).rbg - 0.5f );
	float4 sample = tex2Dlod( TerrainDiffuse, sample_terrain( IndexU.w, IndexV.w, vTileRepeat, vMipTexels, lod ) );
#ifdef NO_SHADER_TEXTURE_LOD
	float3 terrain_normal = float3( 0,1,0 );
#else
	float3 terrain_normal = tex2Dlod( TerrainNormal, sample_terrain( IndexU.w, IndexV.w, vTileRepeat, vMipTexels, lod ) ).rbg - 0.5f;
#endif

	if ( vAllSame < 1.0f && vBorderLookup_HeightScale_UseMultisample_Unused.z < 8.0f )
	{
		float4 ColorRD = tex2Dlod( TerrainDiffuse, sample_terrain( IndexU.x, IndexV.x, vTileRepeat, vMipTexels, lod ) );
		float4 ColorLU = tex2Dlod( TerrainDiffuse, sample_terrain( IndexU.y, IndexV.y, vTileRepeat, vMipTexels, lod ) );
		float4 ColorRU = tex2Dlod( TerrainDiffuse, sample_terrain( IndexU.z, IndexV.z, vTileRepeat, vMipTexels, lod ) );

#ifndef NO_SHADER_TEXTURE_LOD
		float3 terrain_normalRD = tex2Dlod( TerrainNormal, sample_terrain( IndexU.x, IndexV.x, vTileRepeat, vMipTexels, lod ) ).rbg - 0.5f;
		float3 terrain_normalLU = tex2Dlod( TerrainNormal, sample_terrain( IndexU.y, IndexV.y, vTileRepeat, vMipTexels, lod ) ).rbg - 0.5f;
		float3 terrain_normalRU = tex2Dlod( TerrainNormal, sample_terrain( IndexU.z, IndexV.z, vTileRepeat, vMipTexels, lod ) ).rbg - 0.5f;
#endif
		float2 vFrac = frac( float2( Input.uv.x * vMapSize.x - 0.5f, Input.uv.y * vMapSize.y - 0.5f ) );


		float vAlphaFactor = 10.0f;

		float4 vTest = float4( 
			vFrac.x + vFrac.x * ColorLU.a * vAlphaFactor, 
			(1.0f - vFrac.x) + (1.0f - vFrac.x) * ColorRU.a * vAlphaFactor, 
			vFrac.x + vFrac.x * sample.a * vAlphaFactor, 
			(1.0f - vFrac.x) + (1.0f - vFrac.x) * ColorRD.a * vAlphaFactor );

		float2 yWeights = float2( ( vTest.x + vTest.y ) * vFrac.y, ( vTest.z + vTest.w ) * ( 1.0f - vFrac.y ) );

		float3 vBlendFactors = float3( vTest.x / ( vTest.x + vTest.y ),
			vTest.z / ( vTest.z + vTest.w ),
			yWeights.x / ( yWeights.x + yWeights.y ) );

		sample = lerp( 
			lerp( ColorRU, ColorLU, vBlendFactors.x ),
			lerp( ColorRD, sample, vBlendFactors.y ), 
			vBlendFactors.z );
			
#ifndef NO_SHADER_TEXTURE_LOD
		terrain_normal = 
			( terrain_normalRU * ( 1.0f - vBlendFactors.x ) + terrain_normalLU * vBlendFactors.x ) * ( 1.0f - vBlendFactors.z ) +
			( terrain_normalRD * ( 1.0f - vBlendFactors.y ) + terrain_normal   * vBlendFactors.y ) * vBlendFactors.z;
#endif

	}

	terrain_normal = normalize( terrain_normal );

	normal = normal.yxz * terrain_normal.x
		+ normal.xyz * terrain_normal.y
		+ normal.xzy * terrain_normal.z;
		
	float3 TerrainColor = tex2D( TerrainColorTint, Input.uv2 ).rgb;
	
	sample.rgb = GetOverlay( sample.rgb, TerrainColor, 0.85f );

	float4 vFoWColor = GetFoWColor( Input.prepos, FoWTexture);
	sample.rgb = ApplySnow( sample.rgb, Input.prepos, normal, vFoWColor, FoWDiffuse );
	
	sample.rgb = calculate_secondary( Input.uv, sample.rgb, Input.prepos.xz );

	float3 vOut = CalculateLighting( sample.rgb, normal );

	vOut = ApplyDistanceFog( vOut, Input.prepos, FoWTexture, FoWDiffuse );

	return float4( ComposeSpecular( vOut, 0.0f ), 1.0f );
}

]] )

DeclareShader( "PixelShaderColor", [[

float4 main( VS_OUTPUT_TERRAIN Input ) : COLOR
{
	clip( Input.prepos.y + TERRAIN_WATER_CLIP_HEIGHT - WATER_HEIGHT );
	float2 vOffsets = float2( -0.5f / vMapSize.x, -0.5f / vMapSize.y );
	
	float vAllSame;
	float4 IndexU;
	float4 IndexV;
	calculate_index( tex2D( TerrainIDMap, Input.uv + vOffsets.xy ), IndexU, IndexV, vAllSame );

	float2 vTileRepeat = Input.uv2 * TERRAINTILEFREQ;
	vTileRepeat.x *= vMapSize.x/vMapSize.y;
	
	float lod = clamp( trunc( mipmapLevel( vTileRepeat ) - 0.5f ), 0.0f, 6.0f );
	float vMipTexels = pow( 2.0f, ATLAS_TEXEL_POW2_EXPONENT - lod );

	float3 normal = normalize( tex2D( HeightNormal, Input.uv2 * vMapSize.zw ).rbg - 0.5f );
	
	float4 sample = tex2Dlod( TerrainDiffuse, sample_terrain( IndexU.w, IndexV.w, vTileRepeat, vMipTexels, lod ) );

	float3 terrain_color = tex2D( ProvinceColorMap, Input.uv ).rgb;
	
	if ( vAllSame < 1.0f && vBorderLookup_HeightScale_UseMultisample_Unused.z < 8.0f )
	{
		float4 ColorRD = tex2Dlod( TerrainDiffuse, sample_terrain( IndexU.x, IndexV.x, vTileRepeat, vMipTexels, lod ) );
		float4 ColorLU = tex2Dlod( TerrainDiffuse, sample_terrain( IndexU.y, IndexV.y, vTileRepeat, vMipTexels, lod ) );
		float4 ColorRU = tex2Dlod( TerrainDiffuse, sample_terrain( IndexU.z, IndexV.z, vTileRepeat, vMipTexels, lod ) );

		float3 terrain_colorRD = tex2D( ProvinceColorMap, Input.uv + vOffsets.yx ).rgb;
		float3 terrain_colorLU = tex2D( ProvinceColorMap, Input.uv + vOffsets.xy ).rgb;
		float3 terrain_colorRU = tex2D( ProvinceColorMap, Input.uv + vOffsets.yy ).rgb;

	float2 vFrac = frac( float2( Input.uv.x * vMapSize.x - 0.5f, Input.uv.y * vMapSize.y - 0.5f ) );
		
		float vAlphaFactor = 10.0f;

		float4 vTest = float4( 
			vFrac.x + vFrac.x * ColorLU.a * vAlphaFactor, 
			(1.0f - vFrac.x) + (1.0f - vFrac.x) * ColorRU.a * vAlphaFactor, 
			vFrac.x + vFrac.x * sample.a * vAlphaFactor, 
			(1.0f - vFrac.x) + (1.0f - vFrac.x) * ColorRD.a * vAlphaFactor );

		float2 yWeights = float2( ( vTest.x + vTest.y ) * vFrac.y, ( vTest.z + vTest.w ) * ( 1.0f - vFrac.y ) );

		float3 vBlendFactors = float3( vTest.x / ( vTest.x + vTest.y ),
			vTest.z / ( vTest.z + vTest.w ),
			yWeights.x / ( yWeights.x + yWeights.y ) );

		sample = lerp( 
			lerp( ColorRU, ColorLU, vBlendFactors.x ),
			lerp( ColorRD, sample, vBlendFactors.y ), 
			vBlendFactors.z );
	}
	
	float3 TerrainColor = tex2D( TerrainColorTint, Input.uv2 ).rgb;	
	sample.rgb = GetOverlay( sample.rgb, TerrainColor, 0.5f );
	
	float2 vBlend = float2( 0.45f, 0.55f );
	float3 vOut = ( dot(sample.rgb, GREYIFY) * vBlend.x + terrain_color.rgb * vBlend.y );
	
	vOut = CalculateLighting( vOut, normal );
	vOut = calculate_secondary( Input.uv, vOut, Input.prepos.xz );
	vOut = ApplyDistanceFog( vOut, Input.prepos, FoWTexture, FoWDiffuse );

	return float4( ComposeSpecular( vOut, 0.0f ), 1.0f );
}

]] )

DeclareShader( "PixelShaderUnderwater", [[

float4 main( VS_OUTPUT_TERRAIN Input ) : COLOR
{
	clip( WATER_HEIGHT - Input.prepos.y + TERRAIN_WATER_CLIP_HEIGHT );

	float3 normal = normalize( tex2D( HeightNormal,Input.uv2 * vMapSize.zw ).rbg - 0.5f );
	float3 sample = tex2D( TerrainDiffuse, Input.uv2 * float2(( vMapSize.x / 64.0f ), ( vMapSize.y / 64.0f ) ) ).rgb;
	float3 waterColorTint = tex2D( TerrainColorTint, Input.uv2*vMapSize.zw ).rgb;

	float vMin = 17.0f;
	float vMax = 18.5f;
	float vWaterFog = saturate( 1.0f - ( Input.prepos.y - vMin ) / ( vMax - vMin ) );
	
	sample = lerp( sample, waterColorTint, vWaterFog );

	float vFog = saturate( Input.prepos.y * Input.prepos.y * Input.prepos.y * WATER_HEIGHT_RECP_SQUARED * WATER_HEIGHT_RECP );

	float3 vOut = CalculateLighting( sample, normal * vFog );
	return float4( vOut, 1.0f );
}

]] )
