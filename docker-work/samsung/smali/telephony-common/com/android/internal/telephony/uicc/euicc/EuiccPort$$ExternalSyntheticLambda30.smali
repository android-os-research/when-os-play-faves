.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    iget p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$0:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->$r8$lambda$5QZWZeFiDfNCZ03pLT6MQ_HZXoc(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
