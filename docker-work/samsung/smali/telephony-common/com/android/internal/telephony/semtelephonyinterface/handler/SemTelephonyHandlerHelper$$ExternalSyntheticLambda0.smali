.class public final synthetic Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;

    return-void
.end method


# virtual methods
.method public final whitelist handleMessage(Landroid/os/Message;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->$r8$lambda$UDb-MIerpMWAE3OqIE51-aXVIGg(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
