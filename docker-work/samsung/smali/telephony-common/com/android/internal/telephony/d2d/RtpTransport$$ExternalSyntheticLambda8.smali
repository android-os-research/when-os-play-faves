.class public final synthetic Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-static {p1}, Lcom/android/internal/telephony/d2d/RtpTransport;->$r8$lambda$E2Ic4KeotZ0Aq8eKmb0jPPkoFjA(Landroid/telephony/ims/RtpHeaderExtensionType;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
