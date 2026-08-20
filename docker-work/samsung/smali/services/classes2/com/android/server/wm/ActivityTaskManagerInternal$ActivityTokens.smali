.class public final Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
.super Ljava/lang/Object;
.source "ActivityTaskManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActivityTokens"
.end annotation


# instance fields
.field public final mActivityToken:Landroid/os/IBinder;

.field public final mAppThread:Landroid/app/IApplicationThread;

.field public final mAssistToken:Landroid/os/IBinder;

.field public final mShareableActivityToken:Landroid/os/IBinder;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/IApplicationThread;Landroid/os/IBinder;I)V
    .registers 7

    .line 349
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->this$0:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    .line 351
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAssistToken:Landroid/os/IBinder;

    .line 352
    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    .line 353
    iput-object p5, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mShareableActivityToken:Landroid/os/IBinder;

    .line 354
    iput p6, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mUid:I

    return-void
.end method


# virtual methods
.method public getActivityToken()Landroid/os/IBinder;
    .registers 1

    .line 361
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getApplicationThread()Landroid/app/IApplicationThread;
    .registers 1

    .line 382
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public getAssistToken()Landroid/os/IBinder;
    .registers 1

    .line 368
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAssistToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getShareableActivityToken()Landroid/os/IBinder;
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mShareableActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 389
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mUid:I

    return p0
.end method
