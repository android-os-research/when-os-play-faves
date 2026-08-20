.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:[B


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda20;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda20;->f$1:[B

    return-void
.end method


# virtual methods
.method public final blacklist build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda20;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda20;->f$1:[B

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->$r8$lambda$OXxQM5JhYqBY5j6LW41I0knTFq8(Ljava/lang/String;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
