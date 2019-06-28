
Pass{
    CGPROGRAM

    // Pragma define shader type to vertex and fragment
    #pragma vertex vert
    #pragma fragment frag

    struct vertInput {
        float4 pos : POSITION;
    }

    struct vertOutput {
        float pos : SV_POSITION;
    }

    vertOutput vert(vertInput input){
        vertOutput O;
        o.pos = UnityObjectToClipPos(input.pos);
        return o;
    }

    half4 frag(vertOutput output) : COLOR{
        return half4(1.0,0.0,0.0,1.0);
    }

    ENDCG
}

