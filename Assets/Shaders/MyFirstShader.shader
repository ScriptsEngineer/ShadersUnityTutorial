Shader "MyShader/MyFirstShader"
{
    Properties
    {
        _MyTexture("My texture", 2D) = "white" {}
        _MyNormalMap("My normal map",2D) = "bump" {}

        _MyInt("My integer", Int) = 2
        _MyFloat("My float", Float) = 1.5
        _MyRange("My range", Range(0.0,1.0)) = 0.5

        _MyColor("My colour", Color) = (1, 0, 0, 1)
        _MyVector("My vector4", Vector) = (0, 0, 0, 0)
    }
    SubShader
    {
        Tags
        {
            "Queue" = "Geometry"
            "RenderType" = "Opaque"
        }
        CGPROGRAM
        #pragma surface surf Lambert

        sampler2D _MyTexture;
        sampler2D _MyNormalMap;

        int _MyInt;
        float _MyFloat;
        float _MyRange;

        half4 _MyColor;
        float4 _MyVector;

        struct Input {
            float2 _MyTexture;
        };


        void surf (Input IN, inout SurfaceOutput o) {
            o.Albedo = tex2D (_MyTexture, IN._MyTexture).rgb;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
