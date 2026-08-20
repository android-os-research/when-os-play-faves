.class public Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;
.super Landroid/content/BroadcastReceiver;
.source "CoverAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 2

    .line 869
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 872
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 873
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_32

    .line 874
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBootCompleted:Z

    .line 876
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    if-eqz p0, :cond_45

    .line 877
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->onBootCompleted()V

    goto :goto_45

    :cond_32
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 878
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 879
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iput-boolean v0, p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    .line 880
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const-wide/16 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mstopAuthentication(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V

    :cond_45
    :goto_45
    return-void
.end method
