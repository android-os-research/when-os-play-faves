.class public Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;
.super Ljava/lang/Object;
.source "PrePackageInstallerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalIntentReceiver"
.end annotation


# static fields
.field public static final TIMEOUT_SEC:I = 0x3c


# instance fields
.field public mLocalSender:Landroid/content/IIntentSender$Stub;

.field public final mResult:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmResult(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 363
    new-instance v0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver$1;-><init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .registers 2

    .line 377
    new-instance v0, Landroid/content/IntentSender;

    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, p0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public getResult()Landroid/content/Intent;
    .registers 2

    .line 382
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
