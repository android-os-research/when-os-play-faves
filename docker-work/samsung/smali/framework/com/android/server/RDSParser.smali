.class public Lcom/android/server/RDSParser;
.super Ljava/lang/Object;
.source "RDSParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RDSParser$ProgramService;,
        Lcom/android/server/RDSParser$RadioText;
    }
.end annotation


# static fields
.field public static final blacklist FM_RDS_STATUS_UNCORRECTABLE:I = 0x3

.field public static final blacklist GROUP_TYPE_0A:I = 0x0

.field public static final blacklist GROUP_TYPE_0B:I = 0x1

.field public static final blacklist GROUP_TYPE_2A:I = 0x4

.field public static final blacklist GROUP_TYPE_2B:I = 0x5

.field public static final blacklist PROGRAM_SERVICE_MAX_SIZE:I = 0x8

.field public static final blacklist PS_CHECK_BOUND:I = 0x2

.field public static final blacklist RADIO_TEXT_MAX_SIZE:I = 0x40

.field public static final blacklist RT_CHECK_BOUND:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FMRDSParser"

.field private static blacklist mInstance:Lcom/android/server/RDSParser;


# instance fields
.field private blacklist mFinalProgramService:Ljava/lang/String;

.field private blacklist mFinalRadioText:Ljava/lang/String;

.field private blacklist mPI:I

.field private blacklist mPTY:I

.field private blacklist mProgramService:Lcom/android/server/RDSParser$ProgramService;

.field private blacklist mRadioText:Lcom/android/server/RDSParser$RadioText;

.field private blacklist mTP:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProgramService(Lcom/android/server/RDSParser;)Lcom/android/server/RDSParser$ProgramService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioText(Lcom/android/server/RDSParser;)Lcom/android/server/RDSParser$RadioText;
    .registers 1

    iget-object p0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smLog(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/RDSParser;->mInstance:Lcom/android/server/RDSParser;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalRadioText:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalProgramService:Ljava/lang/String;

    .line 30
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/RDSParser;->mPI:I

    .line 31
    iput v1, p0, Lcom/android/server/RDSParser;->mPTY:I

    .line 32
    iput v1, p0, Lcom/android/server/RDSParser;->mTP:I

    .line 42
    new-instance v1, Lcom/android/server/RDSParser$RadioText;

    invoke-direct {v1, p0}, Lcom/android/server/RDSParser$RadioText;-><init>(Lcom/android/server/RDSParser;)V

    iput-object v1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    .line 43
    new-instance v1, Lcom/android/server/RDSParser$ProgramService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/RDSParser$ProgramService;-><init>(Lcom/android/server/RDSParser;Lcom/android/server/RDSParser$ProgramService-IA;)V

    iput-object v1, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    .line 44
    return-void
.end method

.method private static blacklist Log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 290
    const-string v0, "FMRDSParser"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/server/RDSParser;
    .registers 1

    .line 35
    sget-object v0, Lcom/android/server/RDSParser;->mInstance:Lcom/android/server/RDSParser;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/android/server/RDSParser;

    invoke-direct {v0}, Lcom/android/server/RDSParser;-><init>()V

    sput-object v0, Lcom/android/server/RDSParser;->mInstance:Lcom/android/server/RDSParser;

    .line 38
    :cond_b
    sget-object v0, Lcom/android/server/RDSParser;->mInstance:Lcom/android/server/RDSParser;

    return-object v0
.end method


# virtual methods
.method public blacklist getProgramService()Ljava/lang/String;
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v0}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetbuffer_validate(Lcom/android/server/RDSParser$ProgramService;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_11

    .line 183
    iget-object v0, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {v0}, Lcom/android/server/RDSParser$ProgramService;->getProgramService()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalProgramService:Ljava/lang/String;

    .line 186
    :cond_11
    iget-object v0, p0, Lcom/android/server/RDSParser;->mFinalProgramService:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRadioText()Ljava/lang/String;
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v0}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetbuffer_validate(Lcom/android/server/RDSParser$RadioText;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_11

    .line 175
    iget-object v0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v0}, Lcom/android/server/RDSParser$RadioText;->getRadioText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalRadioText:Ljava/lang/String;

    .line 178
    :cond_11
    iget-object v0, p0, Lcom/android/server/RDSParser;->mFinalRadioText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isRDSDataValid()Z
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v0}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetisRTValid(Lcom/android/server/RDSParser$RadioText;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v1}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetisPSValid(Lcom/android/server/RDSParser$ProgramService;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public blacklist parseData(Lcom/android/server/ExtRDSData;)V
    .registers 16
    .param p1, "data"    # Lcom/android/server/ExtRDSData;

    .line 54
    iget v0, p1, Lcom/android/server/ExtRDSData;->blera:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 55
    return-void

    .line 58
    :cond_6
    iget-object v0, p1, Lcom/android/server/ExtRDSData;->rdsb:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shr-int/2addr v0, v1

    .line 59
    .local v0, "RDSGroupCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_26

    const-string v4, "A"

    goto :goto_28

    :cond_26
    const-string v4, "B"

    :goto_28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    .line 61
    iget-object v3, p1, Lcom/android/server/ExtRDSData;->rdsa:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p1, Lcom/android/server/ExtRDSData;->rdsa:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 62
    .local v3, "PI":I
    iget v4, p0, Lcom/android/server/RDSParser;->mPI:I

    if-eq v3, v4, :cond_53

    .line 63
    iput v3, p0, Lcom/android/server/RDSParser;->mPI:I

    .line 64
    iget-object v4, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v4}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    .line 65
    iget-object v4, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {v4}, Lcom/android/server/RDSParser$ProgramService;->resetBuffer()V

    .line 68
    :cond_53
    const-string v4, "RDS is corrupted!"

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_280

    :pswitch_59
    goto/16 :goto_27e

    .line 95
    :pswitch_5b
    iget-object v7, p1, Lcom/android/server/ExtRDSData;->rdsb:[B

    aget-byte v7, v7, v5

    and-int/lit8 v7, v7, 0xf

    .line 96
    .local v7, "RT_data_segment":I
    iget-object v8, p1, Lcom/android/server/ExtRDSData;->rdsb:[B

    aget-byte v8, v8, v5

    and-int/lit8 v8, v8, 0x10

    const/4 v9, 0x4

    shr-int/2addr v8, v9

    .line 97
    .local v8, "RTChangeFlag":I
    new-array v10, v9, [C

    .line 101
    .local v10, "rds_data":[C
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RTChangeFlag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    .line 102
    iget-object v11, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v11}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetpreviousRTChangeFlag(Lcom/android/server/RDSParser$RadioText;)I

    move-result v11

    if-eq v8, v11, :cond_9d

    .line 103
    const-string v11, "Detected change"

    invoke-static {v11}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    .line 104
    iget-object v11, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v11}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    .line 105
    iget-object v11, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v11, v2}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputbuffer_validate(Lcom/android/server/RDSParser$RadioText;I)V

    .line 106
    iget-object v11, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v11, v8}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputpreviousRTChangeFlag(Lcom/android/server/RDSParser$RadioText;I)V

    .line 108
    :cond_9d
    if-ne v0, v9, :cond_cd

    .line 109
    iget v9, p1, Lcom/android/server/ExtRDSData;->blerc:I

    if-eq v9, v1, :cond_c8

    iget v9, p1, Lcom/android/server/ExtRDSData;->blerd:I

    if-ne v9, v1, :cond_a8

    goto :goto_c8

    .line 113
    :cond_a8
    iget-object v4, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v4, v4, v2

    int-to-char v4, v4

    aput-char v4, v10, v2

    .line 114
    iget-object v4, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v10, v5

    .line 115
    iget-object v4, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v4, v4, v2

    int-to-char v4, v4

    aput-char v4, v10, v6

    .line 116
    iget-object v4, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v10, v1

    .line 118
    const/16 v1, 0x40

    .line 120
    .local v1, "max_data_length":I
    const/4 v4, 0x4

    .local v4, "data_segment_size":I
    goto :goto_e7

    .line 110
    .end local v1    # "max_data_length":I
    .end local v4    # "data_segment_size":I
    :cond_c8
    :goto_c8
    invoke-static {v4}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    .line 111
    goto/16 :goto_27e

    .line 123
    :cond_cd
    iget v6, p1, Lcom/android/server/ExtRDSData;->blerd:I

    if-ne v6, v1, :cond_d6

    .line 124
    invoke-static {v4}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    .line 125
    goto/16 :goto_27e

    .line 127
    :cond_d6
    iget-object v1, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v1, v1, v2

    int-to-char v1, v1

    aput-char v1, v10, v2

    .line 128
    iget-object v1, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v1, v1, v5

    int-to-char v1, v1

    aput-char v1, v10, v5

    .line 130
    const/16 v1, 0x20

    .line 132
    .restart local v1    # "max_data_length":I
    const/4 v4, 0x2

    .line 135
    .restart local v4    # "data_segment_size":I
    :goto_e7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Group 2 - Segment:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " - data:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v12, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v12, v12, v2

    int-to-char v12, v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ","

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v13, v13, v5

    int-to-char v13, v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v13, v13, v2

    int-to-char v13, v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v13, v13, v5

    int-to-char v13, v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v9, v9, v2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v9, v9, v5

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v2, v9, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v6, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    .line 138
    mul-int/2addr v7, v4

    .line 139
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17b
    if-ge v2, v4, :cond_1b2

    .line 140
    aget-char v6, v10, v2

    const/16 v9, 0xd

    if-eq v6, v9, :cond_1a1

    aget-char v6, v10, v2

    if-nez v6, :cond_188

    goto :goto_1a1

    .line 146
    :cond_188
    iget-object v6, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v6}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetbuffer_rt(Lcom/android/server/RDSParser$RadioText;)[C

    move-result-object v6

    add-int v9, v7, v2

    aget-char v11, v10, v2

    aput-char v11, v6, v9

    .line 147
    iget-object v6, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v6}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$RadioText;)I

    move-result v9

    add-int/2addr v9, v5

    invoke-static {v6, v9}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputreceivedChar(Lcom/android/server/RDSParser$RadioText;I)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_17b

    .line 141
    :cond_1a1
    :goto_1a1
    const-string v6, "RT endReceived"

    invoke-static {v6}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    .line 142
    iget-object v6, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v6, v5}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputendReceived(Lcom/android/server/RDSParser$RadioText;Z)V

    .line 143
    iget-object v5, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    add-int v6, v7, v2

    invoke-static {v5, v6}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputlength(Lcom/android/server/RDSParser$RadioText;I)V

    .line 150
    .end local v2    # "i":I
    :cond_1b2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio Text Buffer: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v6}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetbuffer_rt(Lcom/android/server/RDSParser$RadioText;)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "MonitorRDS"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRadioText.receivedChar: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v5}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$RadioText;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v2, v1}, Lcom/android/server/RDSParser$RadioText;->isRTValid(I)Z

    move-result v2

    if-eqz v2, :cond_212

    .line 154
    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v2}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$RadioText;)I

    move-result v2

    const/16 v5, 0x40

    if-ne v2, v5, :cond_208

    .line 155
    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v2, v5}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputlength(Lcom/android/server/RDSParser$RadioText;I)V

    .line 157
    :cond_208
    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v2}, Lcom/android/server/RDSParser$RadioText;->validateBuffer()V

    .line 158
    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v2}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    .line 161
    :cond_212
    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v2}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetendReceived(Lcom/android/server/RDSParser$RadioText;)Z

    move-result v2

    if-eqz v2, :cond_27e

    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v2}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$RadioText;)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v5}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetlength(Lcom/android/server/RDSParser$RadioText;)I

    move-result v5

    if-le v2, v5, :cond_27e

    .line 162
    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v2}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    goto :goto_27e

    .line 71
    .end local v1    # "max_data_length":I
    .end local v4    # "data_segment_size":I
    .end local v7    # "RT_data_segment":I
    .end local v8    # "RTChangeFlag":I
    .end local v10    # "rds_data":[C
    :pswitch_22e
    iget v2, p1, Lcom/android/server/ExtRDSData;->blerd:I

    if-ne v2, v1, :cond_236

    .line 72
    invoke-static {v4}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    .line 73
    goto :goto_27e

    .line 76
    :cond_236
    iget-object v2, p1, Lcom/android/server/ExtRDSData;->rdsb:[B

    aget-byte v2, v2, v5

    and-int/2addr v1, v2

    shl-int/2addr v1, v5

    .line 78
    .local v1, "PS_data_segment":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_23d
    if-ge v2, v6, :cond_26c

    .line 79
    iget-object v4, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v4}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetbuffer_ps(Lcom/android/server/RDSParser$ProgramService;)[C

    move-result-object v4

    add-int v7, v1, v2

    aget-char v4, v4, v7

    iget-object v7, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v7, v7, v2

    int-to-char v7, v7

    if-eq v4, v7, :cond_269

    .line 80
    iget-object v4, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v4}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetbuffer_ps(Lcom/android/server/RDSParser$ProgramService;)[C

    move-result-object v4

    add-int v7, v1, v2

    iget-object v8, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v8, v8, v2

    int-to-char v8, v8

    aput-char v8, v4, v7

    .line 81
    iget-object v4, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v4}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$ProgramService;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v4, v7}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fputreceivedChar(Lcom/android/server/RDSParser$ProgramService;I)V

    .line 78
    :cond_269
    add-int/lit8 v2, v2, 0x1

    goto :goto_23d

    .line 86
    .end local v2    # "index":I
    :cond_26c
    iget-object v2, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {v2}, Lcom/android/server/RDSParser$ProgramService;->isPSValid()Z

    move-result v2

    if-eqz v2, :cond_27e

    .line 87
    iget-object v2, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {v2}, Lcom/android/server/RDSParser$ProgramService;->validateBuffer()V

    .line 88
    iget-object v2, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {v2}, Lcom/android/server/RDSParser$ProgramService;->resetBuffer()V

    .line 167
    .end local v1    # "PS_data_segment":I
    :cond_27e
    :goto_27e
    return-void

    nop

    :pswitch_data_280
    .packed-switch 0x0
        :pswitch_22e
        :pswitch_22e
        :pswitch_59
        :pswitch_59
        :pswitch_5b
        :pswitch_5b
    .end packed-switch
.end method

.method public blacklist reset()V
    .registers 3

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalRadioText:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalProgramService:Ljava/lang/String;

    .line 49
    new-instance v1, Lcom/android/server/RDSParser$RadioText;

    invoke-direct {v1, p0}, Lcom/android/server/RDSParser$RadioText;-><init>(Lcom/android/server/RDSParser;)V

    iput-object v1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    .line 50
    new-instance v1, Lcom/android/server/RDSParser$ProgramService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/RDSParser$ProgramService;-><init>(Lcom/android/server/RDSParser;Lcom/android/server/RDSParser$ProgramService-IA;)V

    iput-object v1, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    .line 51
    return-void
.end method
