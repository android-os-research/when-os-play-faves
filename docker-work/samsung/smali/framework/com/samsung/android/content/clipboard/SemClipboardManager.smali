.class public Lcom/samsung/android/content/clipboard/SemClipboardManager;
.super Ljava/lang/Object;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$OnUserChangedListener;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$Type;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$ClipboardEvent;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ADD_CLIP:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.ADD_CLIP"

.field public static final whitelist ACTION_CLIPBOARD_CLOSED:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.CLIPBOARD_CLOSED"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation
.end field

.field public static final whitelist ACTION_CLIPBOARD_OPENED:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.CLIPBOARD_OPENED"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation
.end field

.field public static final whitelist ACTION_DISMISS_CLIPBOARD:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.DISMISS_CLIPBOARD"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation
.end field

.field public static final blacklist ACTION_INTRODUCE_EDGE:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.INTRODUCE_EDGE"

.field public static final blacklist ACTION_REMOVE_CLIP:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.REMOVE_CLIP"

.field public static final blacklist CLIPBOARD_TYPE_FILTER:I = 0xff

.field public static final whitelist EXTRA_DARK_THEME:Ljava/lang/String; = "darkTheme"

.field public static final whitelist EXTRA_EXTRA_PATH:Ljava/lang/String; = "extra_path"

.field public static final whitelist EXTRA_NO_TOAST:Ljava/lang/String; = "noToast"

.field public static final whitelist EXTRA_PATH:Ljava/lang/String; = "path"

.field public static final whitelist EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist KEY_DATA:Ljava/lang/String; = "data"

.field private static final blacklist KEY_FILTER:Ljava/lang/String; = "filter"

.field private static final blacklist TAG:Ljava/lang/String; = "SemClipboardManager"

.field private static blacklist mSemService:Landroid/sec/clipboard/IClipboardService;


# instance fields
.field private final blacklist FAIL_SET_DATA:I

.field private final blacklist PROTECTED_DATA_MAX:I

.field private final blacklist SUCCESS_AND_SAVE_BITMAP:I

.field private final blacklist SUCCESS_SET_DATA:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInnerOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;

.field private blacklist mIsMaximumSize:Z

.field private blacklist mOnClipboardEventServiceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/content/clipboard/SemClipboardEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnPasteServiceListener:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

.field private blacklist mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnotifyEvent(Lcom/samsung/android/content/clipboard/SemClipboardManager;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->notifyEvent(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestPaste(Lcom/samsung/android/content/clipboard/SemClipboardManager;Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->requestPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSemService:Landroid/sec/clipboard/IClipboardService;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->SUCCESS_SET_DATA:I

    .line 45
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->FAIL_SET_DATA:I

    .line 46
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->SUCCESS_AND_SAVE_BITMAP:I

    .line 47
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->PROTECTED_DATA_MAX:I

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .line 56
    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnPasteServiceListener:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    .line 389
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    .line 391
    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mHandler:Landroid/os/Handler;

    .line 398
    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mInnerOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;

    .line 402
    return-void
.end method

.method private static blacklist getSemService()Landroid/sec/clipboard/IClipboardService;
    .registers 2

    .line 405
    sget-object v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSemService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v0, :cond_5

    .line 406
    return-object v0

    .line 409
    :cond_5
    const-string/jumbo v0, "semclipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSemService:Landroid/sec/clipboard/IClipboardService;

    .line 410
    if-nez v0, :cond_1b

    .line 411
    const-string v0, "SemClipboardManager"

    const-string v1, "Failed to get semclipboard service."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1b
    sget-object v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSemService:Landroid/sec/clipboard/IClipboardService;

    return-object v0
.end method

.method private blacklist isEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "func"    # Ljava/lang/String;

    .line 922
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_20

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not enabled! from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v0, 0x0

    return v0

    .line 926
    :cond_20
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist makeFileDescriptor(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .registers 14
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 793
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    .line 794
    .local v0, "fh":Landroid/sec/clipboard/util/FileHelper;
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    const-string v2, "it\'s not file."

    const-string v3, "/data/semclipboard"

    const-string v4, "it\'s /data/semclipdata/.. path file"

    const/high16 v5, 0x38000000

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "SemClipboardManager"

    sparse-switch v1, :sswitch_data_1ae

    goto/16 :goto_1ac

    .line 881
    :sswitch_19
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .line 882
    .local v1, "target":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v9

    .line 884
    .local v9, "imgPath":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 885
    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->setThumbnailImagePathFromUriData(Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Z

    move-result v10

    .line 886
    .local v10, "result":Z
    if-eqz v10, :cond_30

    .line 887
    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v9

    .line 891
    .end local v10    # "result":Z
    :cond_30
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7e

    .line 892
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 893
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_7a

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 894
    invoke-virtual {v0, v10}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 896
    :try_start_51
    invoke-static {v10, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 897
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_58} :catch_5a

    .line 901
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 910
    .end local v10    # "f":Ljava/io/File;
    goto :goto_83

    .line 898
    .restart local v10    # "f":Ljava/io/File;
    :catch_5a
    move-exception v2

    .line 899
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeFileDescriptor(4) Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return v7

    .line 903
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_76
    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    return v7

    .line 907
    :cond_7a
    invoke-static {v8, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return v6

    .line 911
    .end local v10    # "f":Ljava/io/File;
    :cond_7e
    const-string v2, "no preview image file"

    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    .end local v1    # "target":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    .end local v9    # "imgPath":Ljava/lang/String;
    :goto_83
    goto/16 :goto_1ac

    .line 845
    :sswitch_85
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 846
    .local v1, "target":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v9

    .line 848
    .restart local v9    # "imgPath":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9c

    .line 849
    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->setFirstImagePathFromHtmlData(Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;)Z

    move-result v10

    .line 850
    .local v10, "result":Z
    if-eqz v10, :cond_9c

    .line 851
    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v9

    .line 855
    .end local v10    # "result":Z
    :cond_9c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_ea

    .line 856
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 857
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_e6

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e6

    .line 858
    invoke-virtual {v0, v10}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 860
    :try_start_bd
    invoke-static {v10, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 861
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_c4
    .catch Ljava/io/FileNotFoundException; {:try_start_bd .. :try_end_c4} :catch_c6

    .line 865
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 874
    .end local v10    # "f":Ljava/io/File;
    goto :goto_ef

    .line 862
    .restart local v10    # "f":Ljava/io/File;
    :catch_c6
    move-exception v2

    .line 863
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeFileDescriptor(3) Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return v7

    .line 867
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_e2
    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return v7

    .line 871
    :cond_e6
    invoke-static {v8, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return v6

    .line 875
    .end local v10    # "f":Ljava/io/File;
    :cond_ea
    const-string v2, "no first image file"

    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v1    # "target":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    .end local v9    # "imgPath":Ljava/lang/String;
    :goto_ef
    goto/16 :goto_1ac

    .line 796
    :sswitch_f1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .line 797
    .local v1, "target":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v9

    .line 798
    .restart local v9    # "imgPath":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_146

    .line 799
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 800
    .restart local v10    # "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_142

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_142

    .line 801
    invoke-virtual {v0, v10}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_13e

    .line 803
    :try_start_119
    invoke-static {v10, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 804
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_120
    .catch Ljava/io/FileNotFoundException; {:try_start_119 .. :try_end_120} :catch_122

    .line 808
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 817
    .end local v10    # "f":Ljava/io/File;
    goto :goto_14b

    .line 805
    .restart local v10    # "f":Ljava/io/File;
    :catch_122
    move-exception v2

    .line 806
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeFileDescriptor(1) Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return v7

    .line 810
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_13e
    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return v7

    .line 814
    :cond_142
    invoke-static {v8, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return v6

    .line 818
    .end local v10    # "f":Ljava/io/File;
    :cond_146
    const-string v2, "no bitmap file"

    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :goto_14b
    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->hasExtraData()Z

    move-result v2

    if-eqz v2, :cond_1a6

    .line 822
    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, "extraPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a5

    .line 824
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 825
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v0, v3}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_18a

    .line 827
    :try_start_166
    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 828
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1, v4}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_16d
    .catch Ljava/io/FileNotFoundException; {:try_start_166 .. :try_end_16d} :catch_16e

    .line 832
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_1a5

    .line 829
    :catch_16e
    move-exception v4

    .line 830
    .local v4, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeFileDescriptor(2) Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    return v7

    .line 834
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_18a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "it\'s not file. : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return v7

    .line 838
    .end local v2    # "extraPath":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/File;
    :cond_1a5
    :goto_1a5
    goto :goto_1ab

    .line 839
    :cond_1a6
    const-string v2, "no extra bitmap file"

    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    .end local v1    # "target":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    .end local v9    # "imgPath":Ljava/lang/String;
    :goto_1ab
    nop

    .line 918
    :goto_1ac
    return v6

    nop

    :sswitch_data_1ae
    .sparse-switch
        0x2 -> :sswitch_f1
        0x4 -> :sswitch_85
        0x10 -> :sswitch_19
    .end sparse-switch
.end method

.method private blacklist notifyEvent(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 933
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_72

    goto :goto_71

    .line 963
    :sswitch_6
    const/4 v0, 0x0

    .line 965
    .local v0, "filter":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 966
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_13

    .line 967
    const-string v2, "filter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 970
    :cond_13
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 971
    :try_start_16
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 972
    .local v3, "N":I
    if-gtz v3, :cond_20

    .line 973
    monitor-exit v2

    return-void

    .line 975
    :cond_20
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 977
    .local v4, "listeners":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_27
    array-length v6, v4

    if-ge v5, v6, :cond_34

    .line 978
    aget-object v6, v4, v5

    check-cast v6, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    invoke-interface {v6, v0}, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;->onFilterUpdated(I)V

    .line 977
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 980
    .end local v3    # "N":I
    .end local v5    # "i":I
    :cond_34
    monitor-exit v2

    .line 981
    goto :goto_71

    .line 980
    .end local v4    # "listeners":[Ljava/lang/Object;
    :catchall_36
    move-exception v3

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_36

    throw v3

    .line 942
    .end local v0    # "filter":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    :sswitch_39
    const/4 v0, 0x0

    .line 944
    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 945
    .restart local v1    # "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_49

    .line 946
    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 949
    :cond_49
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 950
    :try_start_4c
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 951
    .restart local v3    # "N":I
    if-gtz v3, :cond_56

    .line 952
    monitor-exit v2

    return-void

    .line 954
    :cond_56
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 956
    .restart local v4    # "listeners":[Ljava/lang/Object;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5d
    array-length v6, v4

    if-ge v5, v6, :cond_6c

    .line 957
    aget-object v6, v4, v5

    check-cast v6, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-interface {v6, v7, v0}, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;->onClipboardUpdated(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 956
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 959
    .end local v3    # "N":I
    .end local v5    # "i":I
    :cond_6c
    monitor-exit v2

    .line 960
    goto :goto_71

    .line 959
    .end local v4    # "listeners":[Ljava/lang/Object;
    :catchall_6e
    move-exception v3

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_4c .. :try_end_70} :catchall_6e

    throw v3

    .line 985
    .end local v0    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_71
    return-void

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_39
        0x2 -> :sswitch_39
        0x3 -> :sswitch_39
        0x4 -> :sswitch_39
        0x5 -> :sswitch_6
        0x7 -> :sswitch_39
        0x8 -> :sswitch_39
        0x10 -> :sswitch_39
        0x100 -> :sswitch_39
    .end sparse-switch
.end method

.method private blacklist requestPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .registers 4
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 638
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    const-string v1, "SemClipboardManager"

    if-eqz v0, :cond_12

    .line 639
    if-eqz p1, :cond_c

    .line 640
    invoke-interface {v0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    goto :goto_17

    .line 642
    :cond_c
    const-string v0, "clipdata is null"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 645
    :cond_12
    const-string v0, "no app clipboard listener!"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :goto_17
    return-void
.end method


# virtual methods
.method public whitelist addClip(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p3, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;

    .line 436
    const-string v0, "addClip"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 437
    return-void

    .line 439
    :cond_9
    invoke-virtual {p0, p2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 440
    return-void
.end method

.method public whitelist dismissDialog()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated dismissDialog, calling package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-void
.end method

.method public whitelist filterClip(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .line 604
    const-string v0, "SemClipboardManager"

    const-string v1, "filterClip"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 605
    return-void

    .line 608
    :cond_b
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 610
    :try_start_11
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnPasteServiceListener:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    invoke-interface {v1, p1, v2}, Landroid/sec/clipboard/IClipboardService;->updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFilter - Format("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_4b} :catch_4c

    .line 614
    goto :goto_67

    .line 612
    :catch_4c
    move-exception v1

    .line 613
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in filterClip, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_67
    iput-object p2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .line 617
    :cond_69
    return-void
.end method

.method public whitelist getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 750
    const-string v0, "getClip"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 751
    return-object v1

    .line 754
    :cond_a
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 756
    :try_start_10
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/sec/clipboard/IClipboardService;->getPrimarySemClip(Ljava/lang/String;I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_24} :catch_25

    return-object v0

    .line 757
    :catch_25
    move-exception v0

    .line 758
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in getClip, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardManager"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_42
    return-object v1
.end method

.method public whitelist getClips()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/content/clipboard/data/SemClipData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 723
    const-string v0, "getClips"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 724
    const/4 v0, 0x0

    return-object v0

    .line 727
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v0, "clipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 730
    :try_start_15
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/sec/clipboard/IClipboardService;->getPrimarySemClip(Ljava/lang/String;I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    .line 731
    .local v1, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v1, :cond_2e

    .line 732
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2e} :catch_2f

    .line 736
    .end local v1    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_2e
    goto :goto_4c

    .line 734
    :catch_2f
    move-exception v1

    .line 735
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in getClips, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardManager"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4c
    :goto_4c
    return-object v0
.end method

.method public whitelist getCount()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 508
    const-string v0, "getCount"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    .line 509
    return v1

    .line 512
    :cond_a
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 514
    :try_start_10
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/sec/clipboard/IClipboardService;->hasPrimaryClip(Ljava/lang/String;I)Z

    move-result v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_24} :catch_25

    return v0

    .line 515
    :catch_25
    move-exception v0

    .line 516
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in getCount, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardManager"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_42
    return v1
.end method

.method public whitelist getLatestClip(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .registers 6
    .param p1, "type"    # I

    .line 486
    const-string v0, "getLatestClip"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 487
    return-object v1

    .line 490
    :cond_a
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 492
    :try_start_10
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/sec/clipboard/IClipboardService;->getPrimarySemClip(Ljava/lang/String;I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_24} :catch_25

    return-object v0

    .line 493
    :catch_25
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in getLatestClip, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardManager"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_42
    return-object v1
.end method

.method public whitelist isEnabled()Z
    .registers 4

    .line 676
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 678
    :try_start_6
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardService;->isEnabled(I)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    return v0

    .line 679
    :catch_15
    move-exception v0

    .line 680
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException in isEnabled, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemClipboardManager"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isShowing()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated isShowing, calling package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist paste(Landroid/content/ClipData;)Z
    .registers 6
    .param p1, "data"    # Landroid/content/ClipData;

    .line 623
    const-string v0, "paste(ClipData)"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 624
    return v1

    .line 627
    :cond_a
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 629
    :try_start_10
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, p1, v2, v3}, Landroid/sec/clipboard/IClipboardService;->pasteClipData(Landroid/content/ClipData;Ljava/lang/String;I)Z

    move-result v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_24} :catch_25

    return v0

    .line 630
    :catch_25
    move-exception v0

    .line 631
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in paste(ClipData), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardManager"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_42
    return v1
.end method

.method public whitelist paste(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated paste(String id), calling package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    .line 530
    const-string/jumbo v0, "registerClipboardEventListener"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 531
    return-void

    .line 534
    :cond_a
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-nez v0, :cond_19

    .line 535
    const-string v0, "SemClipboardManager"

    const-string/jumbo v1, "registerClipboardUIInterface: Service is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void

    .line 539
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 540
    :try_start_1c
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_4b

    if-nez v1, :cond_3a

    .line 542
    :try_start_24
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mInnerOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/sec/clipboard/IClipboardService;->addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_33} :catch_34
    .catchall {:try_start_24 .. :try_end_33} :catchall_4b

    .line 545
    goto :goto_3a

    .line 543
    :catch_34
    move-exception v1

    .line 544
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/samsung/android/content/clipboard/SemClipboardManager;
    .end local p1    # "listener":Lcom/samsung/android/content/clipboard/SemClipboardEventListener;
    throw v2

    .line 548
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/samsung/android/content/clipboard/SemClipboardManager;
    .restart local p1    # "listener":Lcom/samsung/android/content/clipboard/SemClipboardEventListener;
    :cond_3a
    :goto_3a
    if-eqz p1, :cond_49

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 549
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_49
    monitor-exit v0

    .line 552
    return-void

    .line 551
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public whitelist registerOnUserChangedListener(Lcom/samsung/android/content/clipboard/SemClipboardManager$OnUserChangedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardManager$OnUserChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated registerOnUserChangedListener, calling package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void
.end method

.method public whitelist removeAll()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated removeAll, calling package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeClip(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated removeClip, calling package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDataWithoutNoti(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)I
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 446
    invoke-virtual {p0, p2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDataWithoutSendingOrginalClipboard(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)I
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 454
    invoke-virtual {p0, p2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .registers 6
    .param p1, "semClip"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 463
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 464
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->makeFileDescriptor(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    const-string v1, "SemClipboardManager"

    if-nez v0, :cond_17

    .line 466
    const-string v0, "failed making file descriptor!"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void

    .line 471
    :cond_17
    :try_start_17
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, p1, v2, v3}, Landroid/sec/clipboard/IClipboardService;->setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2b

    .line 474
    goto :goto_46

    .line 472
    :catch_2b
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in setPrimarySemClip, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_46
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->closeParcelFileDescriptor()V

    .line 477
    :cond_49
    return-void
.end method

.method public whitelist showDialog()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated showDialog, calling package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-void
.end method

.method public whitelist unregisterClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    .line 560
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 561
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 562
    .local v1, "removed":Z
    if-eqz v1, :cond_23

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_25

    if-nez v2, :cond_23

    .line 564
    :try_start_13
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mInnerOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;

    invoke-interface {v2, v3}, Landroid/sec/clipboard/IClipboardService;->removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d
    .catchall {:try_start_13 .. :try_end_1c} :catchall_25

    .line 567
    goto :goto_23

    .line 565
    :catch_1d
    move-exception v2

    .line 566
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1e
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lcom/samsung/android/content/clipboard/SemClipboardManager;
    .end local p1    # "listener":Lcom/samsung/android/content/clipboard/SemClipboardEventListener;
    throw v3

    .line 569
    .end local v1    # "removed":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/samsung/android/content/clipboard/SemClipboardManager;
    .restart local p1    # "listener":Lcom/samsung/android/content/clipboard/SemClipboardEventListener;
    :cond_23
    :goto_23
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist unregisterOnUserChangedListener(Lcom/samsung/android/content/clipboard/SemClipboardManager$OnUserChangedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardManager$OnUserChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated unregisterOnUserChangedListener, calling package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void
.end method

.method public whitelist updateClip(Ljava/lang/String;Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated removeClip, calling package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v0, 0x0

    return v0
.end method
