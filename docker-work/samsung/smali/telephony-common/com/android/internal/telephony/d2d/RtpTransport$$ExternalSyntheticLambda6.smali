.class public final synthetic Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/Uri;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda6;->f$0:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda6;->f$0:Landroid/net/Uri;

    check-cast p1, Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/d2d/RtpTransport;->$r8$lambda$zfJLoQnbhWML1hmuqjhnsIFdSUM(Landroid/net/Uri;Landroid/telephony/ims/RtpHeaderExtensionType;)Z

    move-result p0

    return p0
.end method
