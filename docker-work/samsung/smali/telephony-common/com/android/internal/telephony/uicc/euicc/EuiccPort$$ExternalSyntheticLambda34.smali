.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;->f$0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->$r8$lambda$hPPhf7pfZX8_fQSSClGCb9lgE7Q(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
