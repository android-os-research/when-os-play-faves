.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda28;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda28;->f$1:Z

    return-void
.end method


# virtual methods
.method public final blacklist build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda28;->f$0:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda28;->f$1:Z

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->$r8$lambda$OsZYVCMFCfBe5it3GXFr4-4YDv0(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
