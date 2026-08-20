.class public final Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public mClientBindSequenceNumber:I

.field public mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public mImeDisplayId:I

.field public mImeId:Ljava/lang/String;

.field public mImeTokenString:Ljava/lang/String;

.field public mImeUserId:I

.field public mRestarting:Z

.field public mSequenceNumber:I

.field public mStartInputReason:I

.field public mTargetDisplayId:I

.field public mTargetUserId:I

.field public mTargetWindowSoftInputMode:I

.field public mTargetWindowString:Ljava/lang/String;

.field public mTimestamp:J

.field public mWallTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V
    .registers 2

    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->set(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V

    return-void
.end method


# virtual methods
.method public set(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V
    .registers 4

    .line 1323
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mSequenceNumber:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mSequenceNumber:I

    .line 1324
    iget-wide v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTimestamp:J

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTimestamp:J

    .line 1325
    iget-wide v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mWallTime:J

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mWallTime:J

    .line 1326
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeUserId:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeUserId:I

    .line 1329
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeTokenString:Ljava/lang/String;

    .line 1330
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeDisplayId:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeDisplayId:I

    .line 1331
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeId:Ljava/lang/String;

    .line 1332
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mStartInputReason:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mStartInputReason:I

    .line 1333
    iget-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mRestarting:Z

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mRestarting:Z

    .line 1334
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetUserId:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetUserId:I

    .line 1335
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetDisplayId:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetDisplayId:I

    .line 1338
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowString:Ljava/lang/String;

    .line 1339
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1340
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetWindowSoftInputMode:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowSoftInputMode:I

    .line 1341
    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mClientBindSequenceNumber:I

    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mClientBindSequenceNumber:I

    return-void
.end method
