.class public Lcom/android/server/locksettings/LockSettingsService$7;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsService;->semBioFaceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 4350
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$7;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Lcom/samsung/android/bio/face/SemBioFace;ILjava/lang/CharSequence;)V
    .registers 5

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 4354
    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFace;->getFaceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p3, p2, p1

    const-string p1, "Can\'t remove face %d. Reason: %s"

    .line 4353
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockSettingsService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4355
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onRemovalSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V
    .registers 2

    .line 4360
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
