.class public final Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final mClientState:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

.field public final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public final mFocusedWindowName:Ljava/lang/String;

.field public final mFocusedWindowSoftInputMode:I

.field public final mImeControlTargetName:Ljava/lang/String;

.field public final mImeTargetNameFromWm:Ljava/lang/String;

.field public final mInFullscreenMode:Z

.field public final mReason:I

.field public final mRequestWindowName:Ljava/lang/String;

.field public final mSequenceNumber:I

.field public final mTimestamp:J

.field public final mWallTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->-$$Nest$sfgetsSequenceNumber()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mSequenceNumber:I

    .line 1166
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mClientState:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 1167
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1168
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mFocusedWindowName:Ljava/lang/String;

    .line 1169
    iput p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mFocusedWindowSoftInputMode:I

    .line 1170
    iput p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mReason:I

    .line 1171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mTimestamp:J

    .line 1172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mWallTime:J

    .line 1173
    iput-boolean p6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mInFullscreenMode:Z

    .line 1174
    iput-object p7, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mRequestWindowName:Ljava/lang/String;

    .line 1175
    iput-object p8, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mImeControlTargetName:Ljava/lang/String;

    .line 1176
    iput-object p9, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mImeTargetNameFromWm:Ljava/lang/String;

    return-void
.end method
