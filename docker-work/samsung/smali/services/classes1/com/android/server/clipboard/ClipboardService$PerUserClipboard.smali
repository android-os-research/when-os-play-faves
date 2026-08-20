.class public Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
.super Ljava/lang/Object;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerUserClipboard"
.end annotation


# instance fields
.field public final activePermissionOwners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

.field public final mNotifiedUids:Landroid/util/SparseBooleanArray;

.field public mPrimaryClipPackage:Ljava/lang/String;

.field public mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field public primaryClip:Landroid/content/ClipData;

.field public primaryClipByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field public primaryClipForKNOX:Landroid/content/ClipData;

.field public final primaryClipListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/IOnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public final primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/IOnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public primaryClipUid:I

.field public final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/ClipboardService;I)V
    .registers 3

    .line 297
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 268
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    .line 275
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    const/16 p1, 0x270f

    .line 278
    iput p1, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    .line 283
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    .line 289
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    .line 291
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    .line 298
    iput p2, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->userId:I

    return-void
.end method
