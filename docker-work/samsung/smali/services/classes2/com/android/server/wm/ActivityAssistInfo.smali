.class public Lcom/android/server/wm/ActivityAssistInfo;
.super Ljava/lang/Object;
.source "ActivityAssistInfo.java"


# instance fields
.field public final mActivityToken:Landroid/os/IBinder;

.field public final mAssistToken:Landroid/os/IBinder;

.field public final mTaskId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mActivityToken:Landroid/os/IBinder;

    .line 34
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    iput-object v0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mAssistToken:Landroid/os/IBinder;

    .line 35
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput p1, p0, Lcom/android/server/wm/ActivityAssistInfo;->mTaskId:I

    return-void
.end method


# virtual methods
.method public getActivityToken()Landroid/os/IBinder;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getAssistToken()Landroid/os/IBinder;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mAssistToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getTaskId()I
    .registers 1

    .line 50
    iget p0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mTaskId:I

    return p0
.end method
