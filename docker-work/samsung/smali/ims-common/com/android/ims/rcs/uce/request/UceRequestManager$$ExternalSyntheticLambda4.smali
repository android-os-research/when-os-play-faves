.class public final synthetic Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/RcsContactUceCapability;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/RcsContactUceCapability;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/ims/RcsContactUceCapability;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/ims/RcsContactUceCapability;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->lambda$sendCachedCapInfoToRequester$0(Landroid/telephony/ims/RcsContactUceCapability;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
