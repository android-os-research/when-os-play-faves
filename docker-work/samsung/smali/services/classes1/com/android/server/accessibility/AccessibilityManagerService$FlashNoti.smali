.class public Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlashNoti"
.end annotation


# instance fields
.field public final mOffDuration:I

.field public final mOnDuration:I

.field public final mPkgName:Ljava/lang/String;

.field public final mPreviewType:I

.field public mRepeat:I

.field public final mSbnPkgName:Ljava/lang/String;

.field public final mToken:Landroid/os/IBinder;

.field public final mType:I

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmOffDuration(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOffDuration:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnDuration(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOnDuration:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPkgName(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreviewType(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mPreviewType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRepeat(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSbnPkgName(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mSbnPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToken(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmType(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmRepeat(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 6512
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6513
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mToken:Landroid/os/IBinder;

    .line 6514
    iput p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mType:I

    .line 6515
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mPkgName:Ljava/lang/String;

    .line 6516
    iput-object p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mSbnPkgName:Ljava/lang/String;

    const-string p1, "com.samsung.accessibility"

    .line 6518
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_19

    .line 6519
    iput p6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mPreviewType:I

    goto :goto_1b

    .line 6521
    :cond_19
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mPreviewType:I

    .line 6524
    :goto_1b
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mPreviewType:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2d

    const/16 p1, 0x1388

    .line 6525
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOnDuration:I

    const/16 p1, 0x3e8

    .line 6526
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOffDuration:I

    const/4 p1, 0x1

    .line 6527
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I

    goto :goto_43

    :cond_2d
    const/4 p1, 0x2

    if-ne p3, p1, :cond_39

    const/16 p1, 0x2bc

    .line 6529
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOnDuration:I

    .line 6530
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOffDuration:I

    .line 6531
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I

    goto :goto_43

    :cond_39
    const/16 p2, 0x15e

    .line 6533
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOnDuration:I

    const/16 p2, 0xfa

    .line 6534
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOffDuration:I

    .line 6535
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I

    :goto_43
    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ILcom/android/server/accessibility/AccessibilityManagerService$FlashNoti-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 6540
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmFlashNotifications(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "AccessibilityManagerService"

    .line 6541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FlashNoti.binderDied(), pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6542
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmFlashNotifications(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 6543
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmCurrentFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    move-result-object v1

    if-ne p0, v1, :cond_3a

    .line 6544
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$msemStopFlashNotiLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 6545
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$msemStartNextFlashNotiLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 6547
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw p0
.end method
