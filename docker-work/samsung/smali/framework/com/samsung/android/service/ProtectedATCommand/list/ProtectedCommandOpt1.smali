.class public Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "ProtectedCommandOpt1.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    .line 27
    const/16 v0, 0xa3

    :try_start_5
    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->addATCommands()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 31
    goto :goto_f

    .line 29
    :catch_b
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    return-void
.end method


# virtual methods
.method protected blacklist addATCommands()V
    .registers 4

    .line 36
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ENGMODES=8,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 37
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+FUNCTEST=0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 38
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RGBPDISP=0,1,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 39
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+FIRMVERS=3,2,7"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 40
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+FIRMVERS=3,3,7"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 41
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DISPTEST=1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 42
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HEADINFO=1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 43
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+FUNCTEST=0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 44
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+VIBRTEST=0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 45
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+VIBRTEST=0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 46
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,0,9"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 47
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,1,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 48
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 49
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,0,8"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 50
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LIGHTEST=0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 51
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LIGHTEST=0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 52
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LIGHTEST=1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 53
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BARCODEE=0,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 54
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BARCODEE=0,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 55
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CONNTEST=3,0,2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 56
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ARPCHECK=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 57
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 58
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,1,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 59
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 60
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,0,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 61
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 62
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,5,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 63
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,2,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 64
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ACTIVEID=0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 65
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DEBUGLVC=1,3"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 66
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DEBUGLVC=0,5"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 67
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DEBUGLVC=0,6"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 68
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NFCMTEST=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 69
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NFCMTEST=1,5"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 70
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ALERTDIS=0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 71
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ALERTDIS=0,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 72
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+VERSNAME=1,1,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 73
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LDUCCSUM=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 74
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+PDPBACKU=0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 75
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+PDPBACKU=0,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 76
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+PDPBACKU=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 77
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ISOSECHW=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 78
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,0,6,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 79
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 80
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 81
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=0,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 82
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=0,3"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 83
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=0,4"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 84
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 85
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=1,3"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 86
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TESTAPKU=1,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 87
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,3,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 88
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RFNVCHKS=0,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 89
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,0,7"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 90
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LDUCCSUM=1,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 91
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,8,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 92
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DISPTEST=1,1"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 93
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DISPTEST=4,5"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 94
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DISPTEST=7,*"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 95
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DISPTEST=4,6"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 96
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DISPTEST=10,0"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 97
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DISPTEST=10,2"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 98
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DISPTEST=10,3"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 99
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+RFNVCHKS=1,0,2"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 100
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DEBUGLVC=0,7"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 101
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DEBUGLVC=0,8"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 102
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+TSSCHECK=0,0,0"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 103
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+TSSCHECK=1,0,0"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 104
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+FACMTEST=0,3,2,0"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 105
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+FACMTEST=0,2,2,0"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 106
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 107
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 108
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 109
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 110
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 111
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,5,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 112
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,6,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 113
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,1,3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 114
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 115
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,4,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 116
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,4,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 117
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+COFPDATA =2,0,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 118
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+COFPDATA =1,0,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 119
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SVCAINIT=0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 120
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SVCAINIT=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 121
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SELFTEST=4,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 122
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SELFTEST=3,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 123
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SELFTEST=2,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 124
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SELFTEST=2,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 125
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SELFTEST=3,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 126
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BOOTMODE=0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 127
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BOOTMODE=1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 128
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+GEOMAGSS=3,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 129
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+EGMC=1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 130
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+EFUN=0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 131
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ESUO=4"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 132
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+QUESTCHK=1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 133
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+PMICTEST=0,1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 134
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BATTTEST=1,9"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 135
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BATTTEST=2,4"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 136
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BATTTEST=3,9"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 137
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+VIBRTEST=4,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 138
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RSTCOUNT=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 139
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HAICTEST=4,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 140
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HAICTEST=5,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 141
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=1,0,0,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 142
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,0,0,3"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 143
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 144
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,0,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 145
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,1,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 146
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,1,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 147
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,2,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 148
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,2,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 149
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,2,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 150
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,2,3,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 151
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,1,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 152
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,1,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 153
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTEICODE=1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 154
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IRTEMPSC=0,1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 155
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+EWRITECK=1,7"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 156
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+EWRITECK=6,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 157
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+EWRITECK=6,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 158
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,1,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 159
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,0,5,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 160
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,2,2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 161
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=1,4,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 162
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 163
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 164
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 165
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_OIS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 166
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_PARAMETER_READ"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 167
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_READ"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 168
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_READ_1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 169
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_READ_2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 170
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,2,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 171
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=1,0,8,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 172
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HWPARAMD=0,0,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 173
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HWPARAMD=1,3,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 174
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LANGUSET=0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 175
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DEVROOTK=1,3,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 176
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BTIDTEST=3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 177
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BTIDTEST=1,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 178
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NETMODEC=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 179
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NETMODEC=1,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 180
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+WIFIDEBG=0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 181
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+WIFIDEBG=0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 182
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+WIFIDEBG=1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 183
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MSLSECUR=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 184
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MSLSECUR=3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 185
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IMEITEST=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 186
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IMEITEST=3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 187
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IMEITEST=4,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 188
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IMEICERT=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 189
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MEIDAUTH=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 190
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+AOTKEYWR=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 191
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IMEISIGN=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 192
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DETALOCK=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 193
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LOCKINFO=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 194
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RFBYCODE=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 195
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CPLDUCFG=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 196
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BLOBSIGN=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 197
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IMEITEST=6,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 198
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IMEITEST=7,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 199
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BLOBSIGN=3,2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 200
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LVOFLOCK=1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 201
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+PRODCODE=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 202
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SIMSWITC=0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 203
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SSUCONFG=0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 204
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SSUCONFG=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 205
    return-void
.end method
