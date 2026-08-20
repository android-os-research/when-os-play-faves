.class public Lorg/apache/commons/codec/language/DoubleMetaphone;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String;

.field private static final SILENT_START:[Ljava/lang/String;

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


# instance fields
.field protected maxCodeLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 51
    const-string v0, "GN"

    const-string v1, "KN"

    const-string v2, "PN"

    const-string v3, "WR"

    const-string v4, "PS"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    .line 53
    const-string v1, "L"

    const-string v2, "R"

    const-string v3, "N"

    const-string v4, "M"

    const-string v5, "B"

    const-string v6, "H"

    const-string v7, "F"

    const-string v8, "V"

    const-string v9, "W"

    const-string v10, " "

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 55
    const-string v1, "ES"

    const-string v2, "EP"

    const-string v3, "EB"

    const-string v4, "EL"

    const-string v5, "EY"

    const-string v6, "IB"

    const-string v7, "IL"

    const-string v8, "IN"

    const-string v9, "IE"

    const-string v10, "EI"

    const-string v11, "ER"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 57
    const-string v1, "L"

    const-string v2, "T"

    const-string v3, "K"

    const-string v4, "S"

    const-string v5, "N"

    const-string v6, "M"

    const-string v7, "B"

    const-string v8, "Z"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    .line 70
    return-void
.end method

.method private cleanInput(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "input"    # Ljava/lang/String;

    .line 923
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 924
    return-object v0

    .line 926
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 927
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 928
    return-object v0

    .line 930
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private conditionC0(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 814
    const/4 v0, 0x4

    const-string v1, "CHIA"

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 815
    return v1

    .line 816
    :cond_b
    const/4 v0, 0x0

    if-gt p2, v1, :cond_f

    .line 817
    return v0

    .line 818
    :cond_f
    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 819
    return v0

    .line 820
    :cond_1c
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x3

    const-string v4, "ACH"

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 821
    return v0

    .line 823
    :cond_28
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    .line 824
    .local v2, "c":C
    const/16 v3, 0x49

    if-eq v2, v3, :cond_36

    const/16 v3, 0x45

    if-ne v2, v3, :cond_43

    :cond_36
    add-int/lit8 v3, p2, -0x2

    const/4 v4, 0x6

    .line 825
    const-string v5, "BACHER"

    const-string v6, "MACHER"

    invoke-static {p1, v3, v4, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    :cond_43
    goto :goto_45

    :cond_44
    move v1, v0

    .line 824
    :goto_45
    return v1
.end method

.method private conditionCH0(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 833
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 834
    return v0

    .line 835
    :cond_4
    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x5

    const-string v3, "HARAC"

    const-string v4, "HARIS"

    invoke-static {p1, v1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    add-int/lit8 v4, p2, 0x1

    const/4 v5, 0x3

    .line 836
    const-string v6, "HOR"

    const-string v7, "HYM"

    const-string v8, "HIA"

    const-string v9, "HEM"

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 837
    return v0

    .line 838
    :cond_24
    const-string v1, "CHORE"

    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 839
    return v0

    .line 841
    :cond_2d
    const/4 v0, 0x1

    return v0
.end method

.method private conditionCH1(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 849
    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string v2, "VAN "

    const-string v3, "VON "

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5b

    const/4 v1, 0x3

    const-string v3, "SCH"

    invoke-static {p1, v0, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5b

    add-int/lit8 v4, p2, -0x2

    const/4 v5, 0x6

    .line 851
    const-string v6, "ORCHES"

    const-string v7, "ARCHIT"

    const-string v8, "ORCHID"

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5b

    add-int/lit8 v1, p2, 0x2

    .line 852
    const-string v3, "T"

    const-string v4, "S"

    invoke-static {p1, v1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5b

    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x1

    .line 853
    const-string v6, "A"

    const-string v7, "O"

    const-string v8, "U"

    const-string v9, "E"

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    if-nez p2, :cond_5a

    :cond_46
    add-int/lit8 v1, p2, 0x2

    sget-object v3, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 854
    invoke-static {p1, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5b

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v1, v3, :cond_5a

    goto :goto_5b

    :cond_5a
    goto :goto_5c

    :cond_5b
    :goto_5b
    move v0, v2

    .line 849
    :goto_5c
    return v0
.end method

.method private conditionL0(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 861
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1a

    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x4

    .line 862
    const-string v5, "ILLO"

    const-string v6, "ILLA"

    const-string v7, "ALLE"

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 863
    return v1

    .line 864
    :cond_1a
    add-int/lit8 v0, p2, -0x1

    const/4 v2, 0x2

    const-string v3, "AS"

    const-string v4, "OS"

    invoke-static {p1, v0, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 865
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const-string v2, "A"

    const-string v3, "O"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_36
    add-int/lit8 v0, p2, -0x1

    const/4 v2, 0x4

    .line 866
    const-string v3, "ALLE"

    invoke-static {p1, v0, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 867
    return v1

    .line 869
    :cond_42
    const/4 v0, 0x0

    return v0
.end method

.method private conditionM0(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 877
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x4d

    if-ne v0, v2, :cond_c

    .line 878
    return v1

    .line 880
    :cond_c
    add-int/lit8 v0, p2, -0x1

    const/4 v2, 0x3

    const-string v3, "UMB"

    invoke-static {p1, v0, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    add-int/lit8 v0, p2, 0x1

    .line 881
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-eq v0, v2, :cond_2d

    add-int/lit8 v0, p2, 0x2

    const/4 v2, 0x2

    const-string v3, "ER"

    invoke-static {p1, v0, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 880
    :cond_2d
    :goto_2d
    return v1
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # Ljava/lang/String;

    .line 950
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;

    .line 959
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;

    .line 969
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;

    .line 979
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;
    .param p7, "criteria5"    # Ljava/lang/String;

    .line 991
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;
    .param p7, "criteria5"    # Ljava/lang/String;
    .param p8, "criteria6"    # Ljava/lang/String;

    .line 1003
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    const/4 v1, 0x5

    aput-object p8, v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .registers 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # [Ljava/lang/String;

    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, "result":Z
    if-ltz p1, :cond_22

    add-int v1, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_22

    .line 1017
    add-int v1, p1, p2

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, "target":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v3, p3

    if-ge v2, v3, :cond_22

    .line 1020
    aget-object v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1021
    const/4 v0, 0x1

    .line 1022
    goto :goto_22

    .line 1019
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1026
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_22
    :goto_22
    return v0
.end method

.method private handleAEIOUY(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 276
    if-nez p3, :cond_7

    .line 277
    const/16 v0, 0x41

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 279
    :cond_7
    add-int/lit8 v0, p3, 0x1

    return v0
.end method

.method private handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 20
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct {v0, v7, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionC0(Ljava/lang/String;I)Z

    move-result v1

    const/16 v10, 0x4b

    const/4 v11, 0x2

    if-eqz v1, :cond_18

    .line 289
    invoke-virtual {v8, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 290
    add-int/lit8 v1, v9, 0x2

    .end local p3    # "index":I
    .local v1, "index":I
    goto/16 :goto_fd

    .line 291
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_18
    const/16 v12, 0x53

    if-nez v9, :cond_2c

    const/4 v1, 0x6

    const-string v2, "CAESAR"

    invoke-static {v7, v9, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 292
    invoke-virtual {v8, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 293
    add-int/lit8 v1, v9, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_fd

    .line 294
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_2c
    const-string v1, "CH"

    invoke-static {v7, v9, v11, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 295
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_fd

    .line 296
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_3a
    const-string v1, "CZ"

    invoke-static {v7, v9, v11, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    const/16 v13, 0x58

    if-eqz v1, :cond_56

    add-int/lit8 v1, v9, -0x2

    const/4 v2, 0x4

    .line 297
    const-string v3, "WICZ"

    invoke-static {v7, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 299
    invoke-virtual {v8, v12, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 300
    add-int/lit8 v1, v9, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_fd

    .line 301
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_56
    add-int/lit8 v1, v9, 0x1

    const/4 v14, 0x3

    const-string v2, "CIA"

    invoke-static {v7, v1, v14, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 303
    invoke-virtual {v8, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 304
    add-int/lit8 v1, v9, 0x3

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_fd

    .line 305
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_68
    const-string v1, "CC"

    invoke-static {v7, v9, v11, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    const/4 v15, 0x1

    if-eqz v1, :cond_81

    if-ne v9, v15, :cond_7c

    const/4 v1, 0x0

    .line 306
    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_81

    .line 308
    :cond_7c
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    return v1

    .line 309
    :cond_81
    const/4 v3, 0x2

    const-string v4, "CK"

    const-string v5, "CG"

    const-string v6, "CQ"

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 310
    invoke-virtual {v8, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 311
    add-int/lit8 v1, v9, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto :goto_fd

    .line 312
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_98
    const/4 v3, 0x2

    const-string v4, "CI"

    const-string v5, "CE"

    const-string v6, "CY"

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 314
    const/4 v3, 0x3

    const-string v4, "CIO"

    const-string v5, "CIE"

    const-string v6, "CIA"

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 315
    invoke-virtual {v8, v12, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_c1

    .line 317
    :cond_be
    invoke-virtual {v8, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 319
    :goto_c1
    add-int/lit8 v1, v9, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto :goto_fd

    .line 321
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_c4
    invoke-virtual {v8, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 322
    add-int/lit8 v2, v9, 0x1

    const/4 v3, 0x2

    const-string v4, " C"

    const-string v5, " Q"

    const-string v6, " G"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 324
    add-int/lit8 v1, v9, 0x3

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto :goto_fd

    .line 325
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_db
    add-int/lit8 v2, v9, 0x1

    const/4 v3, 0x1

    const-string v4, "C"

    const-string v5, "K"

    const-string v6, "Q"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fb

    add-int/lit8 v1, v9, 0x1

    .line 326
    const-string v2, "CE"

    const-string v3, "CI"

    invoke-static {v7, v1, v11, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fb

    .line 327
    add-int/lit8 v1, v9, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto :goto_fd

    .line 329
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_fb
    add-int/lit8 v1, v9, 0x1

    .line 333
    .end local p3    # "index":I
    .restart local v1    # "index":I
    :goto_fd
    return v1
.end method

.method private handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 342
    add-int/lit8 v1, p3, 0x2

    const/4 v2, 0x1

    const-string v3, "I"

    const-string v4, "E"

    const-string v5, "H"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_43

    add-int/lit8 v0, p3, 0x2

    .line 343
    const-string v2, "HU"

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 345
    const/4 v0, 0x1

    if-ne p3, v0, :cond_28

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_35

    :cond_28
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x5

    .line 346
    const-string v2, "UCCEE"

    const-string v3, "UCCES"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 348
    :cond_35
    const-string v0, "KS"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_40

    .line 351
    :cond_3b
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 353
    :goto_40
    add-int/lit8 p3, p3, 0x3

    goto :goto_49

    .line 355
    :cond_43
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 356
    add-int/2addr p3, v1

    .line 359
    :goto_49
    return p3
.end method

.method private handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 368
    const/16 v0, 0x58

    const/16 v1, 0x4b

    if-lez p3, :cond_15

    const/4 v2, 0x4

    const-string v3, "CHAE"

    invoke-static {p1, p3, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 369
    invoke-virtual {p2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 370
    add-int/lit8 v0, p3, 0x2

    return v0

    .line 371
    :cond_15
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH0(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 373
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 374
    add-int/lit8 v0, p3, 0x2

    return v0

    .line 375
    :cond_21
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH1(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 377
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 378
    add-int/lit8 v0, p3, 0x2

    return v0

    .line 380
    :cond_2d
    if-lez p3, :cond_41

    .line 381
    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "MC"

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 382
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_44

    .line 384
    :cond_3d
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_44

    .line 387
    :cond_41
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 389
    :goto_44
    add-int/lit8 v0, p3, 0x2

    return v0
.end method

.method private handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 12
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 399
    const/4 v0, 0x2

    const-string v1, "DG"

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 401
    add-int/lit8 v3, p3, 0x2

    const/4 v4, 0x1

    const-string v5, "I"

    const-string v6, "E"

    const-string v7, "Y"

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 402
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 403
    add-int/lit8 p3, p3, 0x3

    goto :goto_3e

    .line 406
    :cond_21
    const-string v1, "TK"

    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 407
    add-int/2addr p3, v0

    goto :goto_3e

    .line 409
    :cond_28
    const-string v1, "DT"

    const-string v2, "DD"

    invoke-static {p1, p3, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x54

    if-eqz v1, :cond_39

    .line 410
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 411
    add-int/2addr p3, v0

    goto :goto_3e

    .line 413
    :cond_39
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 414
    add-int/lit8 p3, p3, 0x1

    .line 416
    :goto_3e
    return p3
.end method

.method private handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 21
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x48

    if-ne v1, v2, :cond_18

    .line 427
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .end local p3    # "index":I
    .local v1, "index":I
    goto/16 :goto_13d

    .line 428
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_18
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4e

    const/16 v3, 0x59

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v1, v2, :cond_5c

    .line 429
    const-string v1, "N"

    const-string v2, "KN"

    if-ne v9, v12, :cond_3d

    invoke-virtual {v0, v7, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    invoke-direct {v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v4

    if-eqz v4, :cond_3d

    if-nez p4, :cond_3d

    .line 430
    invoke-virtual {v8, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 431
    :cond_3d
    add-int/lit8 v4, v9, 0x2

    const-string v5, "EY"

    invoke-static {v7, v4, v11, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    add-int/lit8 v4, v9, 0x1

    .line 432
    invoke-virtual {v0, v7, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-eq v4, v3, :cond_55

    if-nez p4, :cond_55

    .line 433
    invoke-virtual {v8, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 435
    :cond_55
    invoke-virtual {v8, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 437
    :goto_58
    add-int/lit8 v1, v9, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_13d

    .line 438
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_5c
    add-int/lit8 v1, v9, 0x1

    const-string v2, "LI"

    invoke-static {v7, v1, v11, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    if-nez p4, :cond_73

    .line 439
    const-string v1, "KL"

    const-string v2, "L"

    invoke-virtual {v8, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    add-int/lit8 v1, v9, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_13d

    .line 441
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_73
    const/16 v13, 0x4a

    const/16 v14, 0x4b

    if-nez v9, :cond_92

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-eq v1, v3, :cond_8b

    add-int/lit8 v1, v9, 0x1

    sget-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    invoke-static {v7, v1, v11, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 443
    :cond_8b
    invoke-virtual {v8, v14, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 444
    add-int/lit8 v1, v9, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_13d

    .line 445
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_92
    add-int/lit8 v1, v9, 0x1

    const-string v2, "ER"

    invoke-static {v7, v1, v11, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    const/4 v15, 0x3

    if-nez v1, :cond_a5

    add-int/lit8 v1, v9, 0x1

    .line 446
    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-ne v1, v3, :cond_d4

    :cond_a5
    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 447
    const-string v4, "DANGER"

    const-string v5, "RANGER"

    const-string v6, "MANGER"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d4

    add-int/lit8 v1, v9, -0x1

    .line 448
    const-string v2, "E"

    const-string v3, "I"

    invoke-static {v7, v1, v12, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d4

    add-int/lit8 v1, v9, -0x1

    .line 449
    const-string v2, "RGY"

    const-string v3, "OGY"

    invoke-static {v7, v1, v15, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 451
    invoke-virtual {v8, v14, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 452
    add-int/lit8 v1, v9, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_13d

    .line 453
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_d4
    add-int/lit8 v2, v9, 0x1

    const/4 v3, 0x1

    const-string v4, "E"

    const-string v5, "I"

    const-string v6, "Y"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_109

    add-int/lit8 v1, v9, -0x1

    .line 454
    const-string v3, "AGGI"

    const-string v4, "OGGI"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f3

    goto :goto_109

    .line 465
    :cond_f3
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x47

    if-ne v1, v2, :cond_103

    .line 466
    add-int/lit8 v1, v9, 0x2

    .line 467
    .end local p3    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v8, v14}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_13d

    .line 469
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_103
    add-int/lit8 v1, v9, 0x1

    .line 470
    .end local p3    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v8, v14}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_13d

    .line 456
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_109
    :goto_109
    const-string v1, "VAN "

    const-string v3, "VON "

    invoke-static {v7, v10, v2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_138

    const-string v1, "SCH"

    invoke-static {v7, v10, v15, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_138

    add-int/lit8 v1, v9, 0x1

    const-string v3, "ET"

    invoke-static {v7, v1, v11, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_126

    goto :goto_138

    .line 459
    :cond_126
    add-int/lit8 v1, v9, 0x1

    const-string v3, "IER"

    invoke-static {v7, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_134

    .line 460
    invoke-virtual {v8, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_13b

    .line 462
    :cond_134
    invoke-virtual {v8, v13, v14}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_13b

    .line 458
    :cond_138
    :goto_138
    invoke-virtual {v8, v14}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 464
    :goto_13b
    add-int/lit8 v1, v9, 0x2

    .line 472
    .end local p3    # "index":I
    .restart local v1    # "index":I
    :goto_13d
    return v1
.end method

.method private handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 19
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 481
    move-object v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    const/16 v12, 0x4b

    const/4 v13, 0x2

    if-lez v11, :cond_1f

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {p0, v9, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 482
    invoke-virtual {v10, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 483
    add-int/lit8 v1, v11, 0x2

    .end local p3    # "index":I
    .local v1, "index":I
    goto/16 :goto_a7

    .line 484
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_1f
    const/16 v14, 0x49

    if-nez v11, :cond_38

    .line 485
    add-int/lit8 v1, v11, 0x2

    invoke-virtual {p0, v9, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-ne v1, v14, :cond_31

    .line 486
    const/16 v1, 0x4a

    invoke-virtual {v10, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_34

    .line 488
    :cond_31
    invoke-virtual {v10, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 490
    :goto_34
    add-int/lit8 v1, v11, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_a7

    .line 491
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_38
    const/4 v7, 0x1

    if-le v11, v7, :cond_4c

    add-int/lit8 v2, v11, -0x2

    const/4 v3, 0x1

    const-string v4, "B"

    const-string v5, "H"

    const-string v6, "D"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    :cond_4c
    if-le v11, v13, :cond_5f

    add-int/lit8 v2, v11, -0x3

    const/4 v3, 0x1

    .line 492
    const-string v4, "B"

    const-string v5, "H"

    const-string v6, "D"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    :cond_5f
    const/4 v1, 0x3

    if-le v11, v1, :cond_71

    add-int/lit8 v1, v11, -0x4

    .line 493
    const-string v2, "B"

    const-string v3, "H"

    invoke-static {v9, v1, v7, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 495
    :cond_6e
    add-int/lit8 v1, v11, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto :goto_a7

    .line 497
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_71
    if-le v11, v13, :cond_98

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {p0, v9, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x55

    if-ne v1, v2, :cond_98

    add-int/lit8 v2, v11, -0x3

    const/4 v3, 0x1

    .line 498
    const-string v4, "C"

    const-string v5, "G"

    const-string v6, "L"

    const-string v7, "R"

    const-string v8, "T"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 500
    const/16 v1, 0x46

    invoke-virtual {v10, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_a5

    .line 501
    :cond_98
    if-lez v11, :cond_a5

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {p0, v9, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-eq v1, v14, :cond_a5

    .line 502
    invoke-virtual {v10, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 504
    :cond_a5
    :goto_a5
    add-int/lit8 v1, v11, 0x2

    .line 506
    .end local p3    # "index":I
    .restart local v1    # "index":I
    :goto_a7
    return v1
.end method

.method private handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 516
    if-eqz p3, :cond_e

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_e
    add-int/lit8 v0, p3, 0x1

    .line 517
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 518
    const/16 v0, 0x48

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 519
    add-int/lit8 p3, p3, 0x2

    goto :goto_24

    .line 522
    :cond_22
    add-int/lit8 p3, p3, 0x1

    .line 524
    :goto_24
    return p3
.end method

.method private handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 14
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 532
    const/4 v0, 0x4

    const-string v1, "JOSE"

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    const/16 v3, 0x20

    const-string v4, "SAN "

    const/4 v5, 0x0

    const/16 v6, 0x48

    const/16 v7, 0x4a

    const/4 v8, 0x1

    if-nez v2, :cond_82

    invoke-static {p1, v5, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto/16 :goto_82

    .line 542
    :cond_1b
    const/16 v2, 0x41

    if-nez p3, :cond_29

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 543
    invoke-virtual {p2, v7, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_75

    .line 544
    :cond_29
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-nez p4, :cond_4d

    add-int/lit8 v0, p3, 0x1

    .line 545
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-eq v0, v2, :cond_49

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_4d

    .line 546
    :cond_49
    invoke-virtual {p2, v7, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_75

    .line 547
    :cond_4d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v8

    if-ne p3, v0, :cond_58

    .line 548
    invoke-virtual {p2, v7, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_75

    .line 549
    :cond_58
    add-int/lit8 v0, p3, 0x1

    sget-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    invoke-static {p1, v0, v8, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    add-int/lit8 v2, p3, -0x1

    const/4 v3, 0x1

    const-string v4, "S"

    const-string v5, "K"

    const-string v6, "L"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 550
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 553
    :cond_75
    :goto_75
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v7, :cond_80

    .line 554
    add-int/lit8 p3, p3, 0x2

    goto :goto_a1

    .line 556
    :cond_80
    add-int/2addr p3, v8

    goto :goto_a1

    .line 534
    :cond_82
    :goto_82
    if-nez p3, :cond_8c

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-eq v1, v3, :cond_9d

    .line 535
    :cond_8c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v0, :cond_9d

    invoke-static {p1, v5, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    goto :goto_9d

    .line 538
    :cond_99
    invoke-virtual {p2, v7, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_a0

    .line 536
    :cond_9d
    :goto_9d
    invoke-virtual {p2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 540
    :goto_a0
    add-int/2addr p3, v8

    .line 559
    :goto_a1
    return p3
.end method

.method private handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 568
    const/16 v0, 0x4c

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 569
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-ne v1, v0, :cond_1b

    .line 570
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionL0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 571
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 573
    :cond_18
    add-int/lit8 p3, p3, 0x2

    goto :goto_1d

    .line 575
    :cond_1b
    add-int/lit8 p3, p3, 0x1

    .line 577
    :goto_1d
    return p3
.end method

.method private handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 586
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_12

    .line 587
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 588
    add-int/lit8 p3, p3, 0x2

    goto :goto_2a

    .line 590
    :cond_12
    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 591
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string v2, "P"

    const-string v3, "B"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    add-int/lit8 v0, p3, 0x2

    goto :goto_29

    :cond_27
    add-int/lit8 v0, p3, 0x1

    :goto_29
    move p3, v0

    .line 593
    :goto_2a
    return p3
.end method

.method private handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x52

    if-ne p3, v0, :cond_27

    if-nez p4, :cond_27

    add-int/lit8 v0, p3, -0x2

    .line 604
    const/4 v2, 0x2

    const-string v3, "IE"

    invoke-static {p1, v0, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    add-int/lit8 v0, p3, -0x4

    .line 605
    const-string v3, "ME"

    const-string v4, "MA"

    invoke-static {p1, v0, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 606
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    goto :goto_2a

    .line 608
    :cond_27
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 610
    :goto_2a
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v1, :cond_35

    add-int/lit8 v0, p3, 0x2

    goto :goto_37

    :cond_35
    add-int/lit8 v0, p3, 0x1

    :goto_37
    return v0
.end method

.method private handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 20
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 620
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    add-int/lit8 v0, v9, -0x1

    const/4 v1, 0x3

    const-string v2, "ISL"

    const-string v3, "YSL"

    invoke-static {v7, v0, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_18

    .line 622
    add-int/lit8 v0, v9, 0x1

    .end local p3    # "index":I
    .local v0, "index":I
    goto/16 :goto_db

    .line 623
    .end local v0    # "index":I
    .restart local p3    # "index":I
    :cond_18
    const/16 v11, 0x58

    const/16 v12, 0x53

    if-nez v9, :cond_2e

    const/4 v0, 0x5

    const-string v2, "SUGAR"

    invoke-static {v7, v9, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 625
    invoke-virtual {v8, v11, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 626
    add-int/lit8 v0, v9, 0x1

    .end local p3    # "index":I
    .restart local v0    # "index":I
    goto/16 :goto_db

    .line 627
    .end local v0    # "index":I
    .restart local p3    # "index":I
    :cond_2e
    const/4 v13, 0x2

    const-string v0, "SH"

    invoke-static {v7, v9, v13, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 628
    add-int/lit8 v1, v9, 0x1

    const/4 v2, 0x4

    const-string v3, "HEIM"

    const-string v4, "HOEK"

    const-string v5, "HOLM"

    const-string v6, "HOLZ"

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 631
    invoke-virtual {v8, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_51

    .line 633
    :cond_4e
    invoke-virtual {v8, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 635
    :goto_51
    add-int/lit8 v0, v9, 0x2

    .end local p3    # "index":I
    .restart local v0    # "index":I
    goto/16 :goto_db

    .line 636
    .end local v0    # "index":I
    .restart local p3    # "index":I
    :cond_55
    const-string v0, "SIO"

    const-string v2, "SIA"

    invoke-static {v7, v9, v1, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d0

    const/4 v0, 0x4

    const-string v2, "SIAN"

    invoke-static {v7, v9, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    goto :goto_d0

    .line 644
    :cond_69
    const-string v14, "Z"

    if-nez v9, :cond_80

    add-int/lit8 v1, v9, 0x1

    const/4 v2, 0x1

    const-string v3, "M"

    const-string v4, "N"

    const-string v5, "L"

    const-string v6, "W"

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_88

    :cond_80
    add-int/lit8 v0, v9, 0x1

    invoke-static {v7, v0, v10, v14}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 649
    :cond_88
    invoke-virtual {v8, v12, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 650
    add-int/lit8 v0, v9, 0x1

    invoke-static {v7, v0, v10, v14}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    add-int/lit8 v0, v9, 0x2

    goto :goto_98

    :cond_96
    add-int/lit8 v0, v9, 0x1

    .end local p3    # "index":I
    .restart local v0    # "index":I
    :goto_98
    goto :goto_db

    .line 651
    .end local v0    # "index":I
    .restart local p3    # "index":I
    :cond_99
    const-string v0, "SC"

    invoke-static {v7, v9, v13, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 652
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .end local p3    # "index":I
    .restart local v0    # "index":I
    goto :goto_db

    .line 654
    .end local v0    # "index":I
    .restart local p3    # "index":I
    :cond_a6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v10

    if-ne v9, v0, :cond_bd

    add-int/lit8 v0, v9, -0x2

    const-string v1, "AI"

    const-string v2, "OI"

    invoke-static {v7, v0, v13, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 657
    invoke-virtual {v8, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    goto :goto_c0

    .line 659
    :cond_bd
    invoke-virtual {v8, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 661
    :goto_c0
    add-int/lit8 v0, v9, 0x1

    const-string v1, "S"

    invoke-static {v7, v0, v10, v1, v14}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    add-int/lit8 v0, v9, 0x2

    goto :goto_cf

    :cond_cd
    add-int/lit8 v0, v9, 0x1

    .end local p3    # "index":I
    .restart local v0    # "index":I
    :goto_cf
    goto :goto_db

    .line 638
    .end local v0    # "index":I
    .restart local p3    # "index":I
    :cond_d0
    :goto_d0
    if-eqz p4, :cond_d6

    .line 639
    invoke-virtual {v8, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_d9

    .line 641
    :cond_d6
    invoke-virtual {v8, v12, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 643
    :goto_d9
    add-int/lit8 v0, v9, 0x3

    .line 663
    .end local p3    # "index":I
    .restart local v0    # "index":I
    :goto_db
    return v0
.end method

.method private handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 18
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 672
    move-object v0, p0

    move-object v10, p1

    move-object/from16 v11, p2

    add-int/lit8 v1, p3, 0x2

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v12, 0x53

    const-string v13, "SK"

    const/16 v2, 0x48

    if-ne v1, v2, :cond_5e

    .line 674
    add-int/lit8 v2, p3, 0x3

    const/4 v3, 0x2

    const-string v4, "OO"

    const-string v5, "ER"

    const-string v6, "EN"

    const-string v7, "UY"

    const-string v8, "ED"

    const-string v9, "EM"

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 677
    add-int/lit8 v1, p3, 0x3

    const/4 v2, 0x2

    const-string v3, "ER"

    const-string v4, "EN"

    invoke-static {p1, v1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 679
    const-string v1, "X"

    invoke-virtual {v11, v1, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 681
    :cond_3b
    invoke-virtual {v11, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_75

    .line 684
    :cond_3f
    const/16 v1, 0x58

    if-nez p3, :cond_5a

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    const/16 v3, 0x57

    if-eq v2, v3, :cond_5a

    .line 685
    invoke-virtual {v11, v1, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_75

    .line 687
    :cond_5a
    invoke-virtual {v11, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_75

    .line 690
    :cond_5e
    add-int/lit8 v2, p3, 0x2

    const/4 v3, 0x1

    const-string v4, "I"

    const-string v5, "E"

    const-string v6, "Y"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 691
    invoke-virtual {v11, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_75

    .line 693
    :cond_72
    invoke-virtual {v11, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 695
    :goto_75
    add-int/lit8 v1, p3, 0x3

    return v1
.end method

.method private handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 704
    const/4 v0, 0x4

    const-string v1, "TION"

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    const/16 v2, 0x58

    const/4 v3, 0x3

    if-eqz v1, :cond_11

    .line 705
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 706
    add-int/2addr p3, v3

    goto :goto_75

    .line 707
    :cond_11
    const-string v1, "TIA"

    const-string v4, "TCH"

    invoke-static {p1, p3, v3, v1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 708
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 709
    add-int/2addr p3, v3

    goto :goto_75

    .line 710
    :cond_20
    const/4 v1, 0x2

    const-string v2, "TH"

    invoke-static {p1, p3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    const/16 v4, 0x54

    if-nez v2, :cond_4b

    const-string v2, "TTH"

    invoke-static {p1, p3, v3, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_4b

    .line 722
    :cond_34
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 723
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string v2, "T"

    const-string v3, "D"

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    add-int/lit8 v0, p3, 0x2

    goto :goto_49

    :cond_47
    add-int/lit8 v0, p3, 0x1

    :goto_49
    move p3, v0

    goto :goto_75

    .line 712
    :cond_4b
    :goto_4b
    add-int/lit8 v2, p3, 0x2

    const-string v5, "OM"

    const-string v6, "AM"

    invoke-static {p1, v2, v1, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 714
    const/4 v2, 0x0

    const-string v5, "VAN "

    const-string v6, "VON "

    invoke-static {p1, v2, v0, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 715
    const-string v0, "SCH"

    invoke-static {p1, v2, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    goto :goto_71

    .line 718
    :cond_6b
    const/16 v0, 0x30

    invoke-virtual {p2, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_74

    .line 716
    :cond_71
    :goto_71
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 720
    :goto_74
    add-int/2addr p3, v1

    .line 725
    :goto_75
    return p3
.end method

.method private handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 13
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 734
    const/4 v0, 0x2

    const-string v1, "WR"

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 736
    const/16 v1, 0x52

    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 737
    add-int/2addr p3, v0

    goto/16 :goto_8e

    .line 739
    :cond_11
    const/16 v1, 0x46

    if-nez p3, :cond_41

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-nez v2, :cond_29

    .line 740
    const-string v2, "WH"

    invoke-static {p1, p3, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 741
    :cond_29
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    const/16 v2, 0x41

    if-eqz v0, :cond_3b

    .line 743
    invoke-virtual {p2, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_3e

    .line 746
    :cond_3b
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 748
    :goto_3e
    add-int/lit8 p3, p3, 0x1

    goto :goto_8e

    .line 749
    :cond_41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_55

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_89

    :cond_55
    add-int/lit8 v3, p3, -0x1

    const/4 v4, 0x5

    .line 750
    const-string v5, "EWSKI"

    const-string v6, "EWSKY"

    const-string v7, "OWSKI"

    const-string v8, "OWSKY"

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 752
    const-string v3, "SCH"

    invoke-static {p1, v0, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    goto :goto_89

    .line 756
    :cond_72
    const/4 v0, 0x4

    const-string v1, "WICZ"

    const-string v2, "WITZ"

    invoke-static {p1, p3, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 758
    const-string v1, "TS"

    const-string v2, "FX"

    invoke-virtual {p2, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    add-int/2addr p3, v0

    goto :goto_8e

    .line 761
    :cond_86
    add-int/lit8 p3, p3, 0x1

    goto :goto_8e

    .line 754
    :cond_89
    :goto_89
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 755
    add-int/lit8 p3, p3, 0x1

    .line 764
    :goto_8e
    return p3
.end method

.method private handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 773
    const/4 v0, 0x1

    if-nez p3, :cond_a

    .line 774
    const/16 v1, 0x53

    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 775
    add-int/2addr p3, v0

    goto :goto_42

    .line 777
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p3, v1, :cond_2b

    add-int/lit8 v1, p3, -0x3

    .line 778
    const/4 v2, 0x3

    const-string v3, "IAU"

    const-string v4, "EAU"

    invoke-static {p1, v1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    add-int/lit8 v1, p3, -0x2

    .line 779
    const/4 v2, 0x2

    const-string v3, "AU"

    const-string v4, "OU"

    invoke-static {p1, v1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 781
    :cond_2b
    const-string v1, "KS"

    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 783
    :cond_30
    add-int/lit8 v1, p3, 0x1

    const-string v2, "C"

    const-string v3, "X"

    invoke-static {p1, v1, v0, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    add-int/lit8 v0, p3, 0x2

    goto :goto_41

    :cond_3f
    add-int/lit8 v0, p3, 0x1

    :goto_41
    move p3, v0

    .line 785
    :goto_42
    return p3
.end method

.method private handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .registers 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 793
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_12

    .line 795
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 796
    add-int/lit8 p3, p3, 0x2

    goto :goto_4e

    .line 798
    :cond_12
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x2

    const-string v3, "ZO"

    const-string v4, "ZI"

    const-string v5, "ZA"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    if-eqz p4, :cond_31

    if-lez p3, :cond_31

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_31

    goto :goto_37

    .line 801
    :cond_31
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_3e

    .line 799
    :cond_37
    :goto_37
    const-string v0, "S"

    const-string v1, "TS"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :goto_3e
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_4b

    add-int/lit8 v0, p3, 0x2

    goto :goto_4d

    :cond_4b
    add-int/lit8 v0, p3, 0x1

    :goto_4d
    move p3, v0

    .line 805
    :goto_4e
    return p3
.end method

.method private isSilentStart(Ljava/lang/String;)Z
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 911
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 912
    const/4 v0, 0x1

    .line 913
    goto :goto_14

    .line 910
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 916
    .end local v1    # "i":I
    :cond_14
    :goto_14
    return v0
.end method

.method private isSlavoGermanic(Ljava/lang/String;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 892
    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_24

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_24

    .line 893
    const-string v0, "CZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_24

    const-string v0, "WITZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    .line 892
    :goto_25
    return v0
.end method

.method private isVowel(C)Z
    .registers 4
    .param p1, "ch"    # C

    .line 900
    const-string v0, "AEIOUY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method


# virtual methods
.method protected charAt(Ljava/lang/String;I)C
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 939
    if-ltz p2, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_9

    goto :goto_e

    .line 942
    :cond_9
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 940
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "alternate"    # Z

    .line 91
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->cleanInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    if-nez p1, :cond_8

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_8
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSlavoGermanic(Ljava/lang/String;)Z

    move-result v0

    .line 97
    .local v0, "slavoGermanic":Z
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSilentStart(Ljava/lang/String;)Z

    move-result v1

    .line 99
    .local v1, "index":I
    new-instance v2, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lorg/apache/commons/codec/language/DoubleMetaphone;I)V

    .line 101
    .local v2, "result":Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    :goto_19
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->isComplete()Z

    move-result v3

    if-nez v3, :cond_11d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_11d

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4e

    const/16 v5, 0x4b

    const/16 v6, 0x46

    sparse-switch v3, :sswitch_data_12a

    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 190
    goto :goto_19

    .line 156
    :sswitch_37
    invoke-virtual {v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    .line 158
    goto :goto_19

    .line 117
    :sswitch_3d
    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    goto :goto_19

    .line 186
    :sswitch_45
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 187
    goto :goto_19

    .line 183
    :sswitch_4a
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 184
    goto :goto_19

    .line 180
    :sswitch_4f
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 181
    goto :goto_19

    .line 176
    :sswitch_54
    invoke-virtual {v2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 177
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x56

    if-ne v3, v4, :cond_64

    add-int/lit8 v3, v1, 0x2

    goto :goto_66

    :cond_64
    add-int/lit8 v3, v1, 0x1

    :goto_66
    move v1, v3

    .line 178
    goto :goto_19

    .line 173
    :sswitch_68
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 174
    goto :goto_19

    .line 170
    :sswitch_6d
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 171
    goto :goto_19

    .line 167
    :sswitch_72
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 168
    goto :goto_19

    .line 163
    :sswitch_77
    invoke-virtual {v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 164
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x51

    if-ne v3, v4, :cond_87

    add-int/lit8 v3, v1, 0x2

    goto :goto_89

    :cond_87
    add-int/lit8 v3, v1, 0x1

    :goto_89
    move v1, v3

    .line 165
    goto :goto_19

    .line 160
    :sswitch_8b
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 161
    goto :goto_19

    .line 151
    :sswitch_90
    invoke-virtual {v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 152
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v4, :cond_9e

    add-int/lit8 v3, v1, 0x2

    goto :goto_a0

    :cond_9e
    add-int/lit8 v3, v1, 0x1

    :goto_a0
    move v1, v3

    .line 153
    goto/16 :goto_19

    .line 147
    :sswitch_a3
    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 148
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionM0(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b1

    add-int/lit8 v3, v1, 0x2

    goto :goto_b3

    :cond_b1
    add-int/lit8 v3, v1, 0x1

    :goto_b3
    move v1, v3

    .line 149
    goto/16 :goto_19

    .line 144
    :sswitch_b6
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 145
    goto/16 :goto_19

    .line 140
    :sswitch_bc
    invoke-virtual {v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 141
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v5, :cond_ca

    add-int/lit8 v3, v1, 0x2

    goto :goto_cc

    :cond_ca
    add-int/lit8 v3, v1, 0x1

    :goto_cc
    move v1, v3

    .line 142
    goto/16 :goto_19

    .line 137
    :sswitch_cf
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 138
    goto/16 :goto_19

    .line 134
    :sswitch_d5
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 135
    goto/16 :goto_19

    .line 131
    :sswitch_db
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 132
    goto/16 :goto_19

    .line 127
    :sswitch_e1
    invoke-virtual {v2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 128
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v6, :cond_ef

    add-int/lit8 v3, v1, 0x2

    goto :goto_f1

    :cond_ef
    add-int/lit8 v3, v1, 0x1

    :goto_f1
    move v1, v3

    .line 129
    goto/16 :goto_19

    .line 124
    :sswitch_f4
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 125
    goto/16 :goto_19

    .line 121
    :sswitch_fa
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 122
    goto/16 :goto_19

    .line 112
    :sswitch_100
    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 113
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_112

    add-int/lit8 v3, v1, 0x2

    goto :goto_114

    :cond_112
    add-int/lit8 v3, v1, 0x1

    :goto_114
    move v1, v3

    .line 114
    goto/16 :goto_19

    .line 109
    :sswitch_117
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleAEIOUY(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 110
    goto/16 :goto_19

    .line 194
    :cond_11d
    if-eqz p2, :cond_124

    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getAlternate()Ljava/lang/String;

    move-result-object v3

    goto :goto_128

    :cond_124
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getPrimary()Ljava/lang/String;

    move-result-object v3

    :goto_128
    return-object v3

    nop

    :sswitch_data_12a
    .sparse-switch
        0x41 -> :sswitch_117
        0x42 -> :sswitch_100
        0x43 -> :sswitch_fa
        0x44 -> :sswitch_f4
        0x45 -> :sswitch_117
        0x46 -> :sswitch_e1
        0x47 -> :sswitch_db
        0x48 -> :sswitch_d5
        0x49 -> :sswitch_117
        0x4a -> :sswitch_cf
        0x4b -> :sswitch_bc
        0x4c -> :sswitch_b6
        0x4d -> :sswitch_a3
        0x4e -> :sswitch_90
        0x4f -> :sswitch_117
        0x50 -> :sswitch_8b
        0x51 -> :sswitch_77
        0x52 -> :sswitch_72
        0x53 -> :sswitch_6d
        0x54 -> :sswitch_68
        0x55 -> :sswitch_117
        0x56 -> :sswitch_54
        0x57 -> :sswitch_4f
        0x58 -> :sswitch_4a
        0x59 -> :sswitch_117
        0x5a -> :sswitch_45
        0xc7 -> :sswitch_3d
        0xd1 -> :sswitch_37
    .end sparse-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 206
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 209
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_c
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "DoubleMetaphone encode parameter is not of type String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 219
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .registers 2

    .line 258
    iget v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;
    .param p3, "alternate"    # Z

    .line 249
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setMaxCodeLen(I)V
    .registers 2
    .param p1, "maxCodeLen"    # I

    .line 266
    iput p1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    .line 267
    return-void
.end method
