.class Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;
.super Ljava/lang/Object;
.source "ApduCommand.java"


# instance fields
.field public final blacklist channel:I

.field public final blacklist cla:I

.field public final blacklist cmdHex:Ljava/lang/String;

.field public final blacklist ins:I

.field public final blacklist p1:I

.field public final blacklist p2:I

.field public final blacklist p3:I


# direct methods
.method constructor blacklist <init>(IIIIIILjava/lang/String;)V
    .registers 8

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->channel:I

    .line 49
    iput p2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->cla:I

    .line 50
    iput p3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->ins:I

    .line 51
    iput p4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->p1:I

    .line 52
    iput p5, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->p2:I

    .line 53
    iput p6, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->p3:I

    .line 54
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->cmdHex:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApduCommand(channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cla="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->cla:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->ins:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", p1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->p1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", p2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->p2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", p3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->p3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->cmdHex:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
