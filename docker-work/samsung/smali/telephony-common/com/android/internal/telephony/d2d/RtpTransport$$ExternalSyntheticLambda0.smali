.class public final synthetic Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/d2d/RtpTransport;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/d2d/RtpTransport;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/d2d/RtpTransport;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/d2d/RtpTransport;

    check-cast p1, Landroid/telephony/ims/RtpHeaderExtension;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/d2d/RtpTransport;->$r8$lambda$qq-ZNu_Bmu1UtX9Upvh3dQtiDTk(Lcom/android/internal/telephony/d2d/RtpTransport;Landroid/telephony/ims/RtpHeaderExtension;)Lcom/android/internal/telephony/d2d/Communicator$Message;

    move-result-object p0

    return-object p0
.end method
