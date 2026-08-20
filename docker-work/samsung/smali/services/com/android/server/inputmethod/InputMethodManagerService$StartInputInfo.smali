.class public Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartInputInfo"
.end annotation


# static fields
.field public static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mClientBindSequenceNumber:I

.field public final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public final mImeDisplayId:I

.field public final mImeId:Ljava/lang/String;

.field public final mImeToken:Landroid/os/IBinder;

.field public final mImeUserId:I

.field public final mRestarting:Z

.field public final mSequenceNumber:I

.field public final mStartInputReason:I

.field public final mTargetDisplayId:I

.field public final mTargetUserId:I

.field public final mTargetWindow:Landroid/os/IBinder;

.field public final mTargetWindowSoftInputMode:I

.field public final mTimestamp:J

.field public final mWallTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1083
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V
    .registers 15

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mSequenceNumber:I

    .line 1115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTimestamp:J

    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mWallTime:J

    .line 1117
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeUserId:I

    .line 1118
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeToken:Landroid/os/IBinder;

    .line 1119
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeDisplayId:I

    .line 1120
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeId:Ljava/lang/String;

    .line 1121
    iput p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mStartInputReason:I

    .line 1122
    iput-boolean p6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mRestarting:Z

    .line 1123
    iput p7, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetUserId:I

    .line 1124
    iput p8, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetDisplayId:I

    .line 1125
    iput-object p9, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    .line 1126
    iput-object p10, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1127
    iput p11, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetWindowSoftInputMode:I

    .line 1128
    iput p12, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mClientBindSequenceNumber:I

    return-void
.end method
