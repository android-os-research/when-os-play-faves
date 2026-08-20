.class public Lcom/android/server/power/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownDialog$SoundThread;,
        Lcom/android/server/power/ShutdownDialog$DrawHandler;,
        Lcom/android/server/power/ShutdownDialog$ImageLoadThread;,
        Lcom/android/server/power/ShutdownDialog$RunningCheckable;,
        Lcom/android/server/power/ShutdownDialog$StateDrawing;,
        Lcom/android/server/power/ShutdownDialog$StatePrepare;,
        Lcom/android/server/power/ShutdownDialog$DrawState;
    }
.end annotation


# static fields
.field public static final BLUE:I = 0x6

.field public static final BUFFER_SIZE:I = 0x3

.field public static final GOLD:I = 0x3

.field public static final GREEN:I = 0x5

.field public static final LAVENDER:I = 0x8

.field public static final MSG_LOAD_FINISH:I = -0x1

.field public static final MSG_UPDATE_DELAY:I = 0x64

.field public static final MSG_UPDATE_FRAME:I = 0x0

.field public static final PATH_B2BSHUTDOWNPATH:Ljava/lang/String; = "//data/system/b2b/ShutdownFileInfo.txt"

.field public static final PATH_SHUTDOWNSOUND_SKU_OGG:Ljava/lang/String; = "/media/audio/ui/PowerOff.ogg"

.field public static final PATH_SHUTDOWNSOUND_SKU_WAV:Ljava/lang/String; = "/media/audio/ui/PowerOff.wav"

.field public static final PATH_SHUTDOWN_ANIM:Ljava/lang/String; = "//system/media/"

.field public static final PATH_SHUTDOWN_SKU:Ljava/lang/String; = "/media/video/shutdown/"

.field public static final PINKGOLD:I = 0x7

.field public static final PROPERTY_SHUTDOWN_SKU:Ljava/lang/String; = "persist.sys.omc_respath"

.field public static final SILVER:I = 0x4

.field public static final TAG:Ljava/lang/String; = "ShutdownDialog"

.field public static final WHITE:I = 0x2


# instance fields
.field public PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

.field public PATH_SHUTDOWNIMG_PREFIX:Ljava/lang/String;

.field public SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

.field public SHUTDOWN_LOOP_FILES:[Ljava/lang/String;

.field public SHUTDOWN_SUBANIM_FILES:[Ljava/lang/String;

.field public SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

.field public final WINDOWTYPE_OFFSET:I

.field public b2bAnimPath:Ljava/lang/String;

.field public b2bSoundPath:Ljava/lang/String;

.field public final bitmapQ:[Landroid/graphics/Bitmap;

.field public bitmapQFront:I

.field public bitmapQRear:I

.field public final chameleonCode:Ljava/lang/String;

.field public final chameleonFile:Ljava/lang/String;

.field public final chameleonFileExist:Z

.field public displayContext:Landroid/content/Context;

.field public displays:[Landroid/view/Display;

.field public dm:Landroid/hardware/display/DisplayManager;

.field public final drawBufferLock:Ljava/lang/Object;

.field public hasSubDisplayDevice:Z

.field public final logHandler:Landroid/os/Handler;

.field public mContext:Landroid/content/Context;

.field public mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

.field public mImageView:Landroid/widget/ImageView;

.field public final mLogString:Ljava/lang/StringBuffer;

.field public mLogView:Landroid/widget/TextView;

.field public mState:Lcom/android/server/power/ShutdownDialog$DrawState;

.field public final mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

.field public final mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

.field public mp:Landroid/media/MediaPlayer;

.field public final qmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field public silentShutdown:Z

.field public subDialog:Landroid/app/Presentation;

.field public subImageView:Landroid/widget/ImageView;

.field public final subbitmapQ:[Landroid/graphics/Bitmap;

.field public subdisplay:Landroid/view/Display;

.field public final subqmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field public final supportChameleon:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetSHUTDOWN_LOOP_FILES(Lcom/android/server/power/ShutdownDialog;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_LOOP_FILES:[Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetb2bAnimPath(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetbitmapQFront(Lcom/android/server/power/ShutdownDialog;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbitmapQRear(Lcom/android/server/power/ShutdownDialog;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetdrawBufferLock(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgethasSubDisplayDevice(Lcom/android/server/power/ShutdownDialog;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/ShutdownDialog;->hasSubDisplayDevice:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDrawHandler(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImageView(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogString(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogView(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateDrawing(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmp(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsilentShutdown(Lcom/android/server/power/ShutdownDialog;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetsubDialog(Lcom/android/server/power/ShutdownDialog;)Landroid/app/Presentation;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->subDialog:Landroid/app/Presentation;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsubImageView(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->subImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsubbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->subbitmapQ:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsubdisplay(Lcom/android/server/power/ShutdownDialog;)Landroid/view/Display;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->subdisplay:Landroid/view/Display;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsubqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->subqmgList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputbitmapQFront(Lcom/android/server/power/ShutdownDialog;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbitmapQRear(Lcom/android/server/power/ShutdownDialog;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputhasSubDisplayDevice(Lcom/android/server/power/ShutdownDialog;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog;->hasSubDisplayDevice:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmState(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsubdisplay(Lcom/android/server/power/ShutdownDialog;Landroid/view/Display;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->subdisplay:Landroid/view/Display;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddToPlaylistIfExists(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$maddToSubPlaylistIfExists(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/ShutdownDialog;->addToSubPlaylistIfExists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetShutdownSoundPath(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getShutdownSoundPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSystemVolume(Lcom/android/server/power/ShutdownDialog;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getSystemVolume()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mprepareSound(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x1030007

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    .line 196
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p2, "//system/media/shutdown_"

    .line 108
    iput-object p2, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_PREFIX:Ljava/lang/String;

    const-string p2, ".qmg"

    .line 109
    iput-object p2, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    const-string p2, "/sys/class/lcd/panel/window_type"

    .line 110
    iput-object p2, p0, Lcom/android/server/power/ShutdownDialog;->SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

    const/16 p2, 0xf

    .line 111
    iput p2, p0, Lcom/android/server/power/ShutdownDialog;->WINDOWTYPE_OFFSET:I

    const-string/jumbo p2, "shutdownbefore.qmg"

    const-string/jumbo v0, "shutdown.qmg"

    const-string/jumbo v1, "shutdownafter.qmg"

    .line 125
    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    const-string/jumbo p2, "shutdownloop.qmg"

    const-string/jumbo v0, "sub_shutdownloop.qmg"

    .line 128
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_LOOP_FILES:[Ljava/lang/String;

    const-string/jumbo p2, "sub_shutdownbefore.qmg"

    const-string/jumbo v0, "sub_shutdown.qmg"

    const-string/jumbo v1, "sub_shutdownafter.qmg"

    .line 130
    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_SUBANIM_FILES:[Ljava/lang/String;

    const-string p2, "/carrier/chameleon.xml"

    .line 139
    iput-object p2, p0, Lcom/android/server/power/ShutdownDialog;->chameleonFile:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_UseChameleon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->supportChameleon:Z

    .line 141
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/power/ShutdownDialog;->chameleonFileExist:Z

    .line 142
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    const/4 p2, 0x3

    new-array v0, p2, [Landroid/graphics/Bitmap;

    .line 145
    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 146
    iput v2, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    .line 147
    iput v2, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    .line 154
    iput-boolean v2, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->subqmgList:Ljava/util/List;

    new-array p2, p2, [Landroid/graphics/Bitmap;

    .line 162
    iput-object p2, p0, Lcom/android/server/power/ShutdownDialog;->subbitmapQ:[Landroid/graphics/Bitmap;

    .line 163
    iput-boolean v2, p0, Lcom/android/server/power/ShutdownDialog;->hasSubDisplayDevice:Z

    .line 173
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    .line 174
    new-instance p2, Lcom/android/server/power/ShutdownDialog$1;

    invoke-direct {p2, p0}, Lcom/android/server/power/ShutdownDialog$1;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object p2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    .line 187
    new-instance p2, Lcom/android/server/power/ShutdownDialog$StatePrepare;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$StatePrepare-IA;)V

    iput-object p2, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    .line 188
    new-instance v1, Lcom/android/server/power/ShutdownDialog$StateDrawing;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$StateDrawing-IA;)V

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    .line 189
    iput-object p2, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    .line 197
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 201
    new-instance p1, Ljava/io/File;

    const-string p2, "//data/system/b2b/ShutdownFileInfo.txt"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const-string p2, "ShutdownDialog"

    if-eqz p1, :cond_e4

    .line 202
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getBtoBShutdownPath()V

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "B2B sound : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "B2B img : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_e4
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 211
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_120

    .line 214
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 215
    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v0, -0x7f95fa80

    or-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 224
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 225
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 226
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/high16 p2, 0x10000

    .line 227
    invoke-virtual {p0, p2}, Landroid/view/Window;->clearFlags(I)V

    const/16 p2, 0x7e5

    .line 229
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p2, 0x1

    .line 234
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 235
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 237
    invoke-virtual {p0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_120
    return-void
.end method

.method public static getElement(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3

    .line 896
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 897
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    .line 900
    :try_start_9
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    .line 901
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 902
    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 903
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    const-string v0, "ShutdownDialog"

    const-string v1, "Exception"

    .line 907
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 856
    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->getElement(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    if-nez p0, :cond_a

    goto :goto_2e

    .line 861
    :cond_a
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "."

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_11
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 863
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 864
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownDialog;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_11

    return-object v0

    .line 870
    :cond_22
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_29

    return-object v0

    .line 875
    :cond_29
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    :goto_2e
    return-object v0
.end method

.method public static search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 883
    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 885
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_23

    .line 887
    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 888
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    return-object v3

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_23
    return-object v0
.end method


# virtual methods
.method public final addToPlaylistIfExists(Ljava/lang/String;)Z
    .registers 3

    .line 973
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 975
    :try_start_b
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    new-instance v0, Lcom/android/server/power/LibQmg;

    invoke-direct {v0, p1}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception p0

    const-string p1, "ShutdownDialog"

    const-string v0, "!@qmgList.add ArrayIndexOutOfBoundsException"

    .line 977
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public final addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    .line 965
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_1e

    aget-object v3, p2, v1

    .line 966
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    return v2
.end method

.method public final addToSubPlaylistIfExists(Ljava/lang/String;)Z
    .registers 3

    .line 997
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 999
    :try_start_b
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->subqmgList:Ljava/util/List;

    new-instance v0, Lcom/android/server/power/LibQmg;

    invoke-direct {v0, p1}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception p0

    const-string p1, "ShutdownDialog"

    const-string v0, "!@subqmgList.add ArrayIndexOutOfBoundsException"

    .line 1001
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public final addToSubPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    .line 989
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_1e

    aget-object v3, p2, v1

    .line 990
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/power/ShutdownDialog;->addToSubPlaylistIfExists(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    return v2
.end method

.method public appendTextLog(Ljava/lang/String;)V
    .registers 5

    .line 1167
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1168
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ShutdownDialog"

    .line 1169
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1171
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final createShutdownQmgPlayList()V
    .registers 9

    .line 1011
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1012
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->subqmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1014
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    const-string v1, "//system/media/"

    if-eqz v0, :cond_2a

    .line 1015
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    .line 1016
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "_shutdown.qmg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1017
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return-void

    .line 1024
    :cond_2a
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    if-eqz v0, :cond_35

    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    return-void

    .line 1029
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->readColorId()I

    move-result v0

    .line 1030
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog;->getQmgCodeById(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "persist.sys.omc_respath"

    .line 1032
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_112

    .line 1036
    iget-boolean v4, p0, Lcom/android/server/power/ShutdownDialog;->supportChameleon:Z

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v4, :cond_112

    :cond_4f
    const-string/jumbo v4, "ro.csc.sales_code"

    .line 1037
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7e

    .line 1038
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v5, :cond_7e

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 1040
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@Power off sound CHAMELEON - update animation path to : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShutdownDialog"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    const-string v4, "/media/video/shutdown/"

    if-eqz v0, :cond_e6

    .line 1044
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shutdown_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1045
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_e6

    .line 1046
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    aput-object v5, v6, v3

    .line 1047
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_SUBANIM_FILES:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/ShutdownDialog;->addToSubPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    return-void

    .line 1054
    :cond_e6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_112

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_SUBANIM_FILES:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/ShutdownDialog;->addToSubPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    return-void

    :cond_112
    if-eqz v0, :cond_140

    .line 1062
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1064
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_140

    .line 1065
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1066
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_SUBANIM_FILES:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/ShutdownDialog;->addToSubPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    return-void

    .line 1071
    :cond_140
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 1073
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1074
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_SUBANIM_FILES:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/ShutdownDialog;->addToSubPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    return-void

    .line 1079
    :cond_169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_LOOP_FILES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    return-void
.end method

.method public drawState()I
    .registers 1

    .line 1191
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {p0}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkStart()Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0x12c

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public existAnim()Z
    .registers 1

    .line 1176
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    .line 1177
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final getBtoBShutdownPath()V
    .registers 5

    const/4 v0, 0x0

    .line 1202
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "//data/system/b2b/ShutdownFileInfo.txt"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_32
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_28
    .catchall {:try_start_1 .. :try_end_d} :catchall_26

    .line 1203
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    .line 1204
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_19} :catch_23
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_20
    .catchall {:try_start_d .. :try_end_19} :catchall_1d

    .line 1212
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_3c

    goto :goto_40

    :catchall_1d
    move-exception p0

    move-object v0, v1

    goto :goto_41

    :catch_20
    move-exception p0

    move-object v0, v1

    goto :goto_29

    :catch_23
    move-exception p0

    move-object v0, v1

    goto :goto_33

    :catchall_26
    move-exception p0

    goto :goto_41

    :catch_28
    move-exception p0

    .line 1208
    :goto_29
    :try_start_29
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_26

    if-eqz v0, :cond_40

    .line 1212
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_3c

    goto :goto_40

    :catch_32
    move-exception p0

    .line 1206
    :goto_33
    :try_start_33
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_26

    if-eqz v0, :cond_40

    .line 1212
    :try_start_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p0

    .line 1214
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    :goto_40
    return-void

    :goto_41
    if-eqz v0, :cond_4b

    .line 1212
    :try_start_43
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception v0

    .line 1214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1217
    :cond_4b
    :goto_4b
    throw p0
.end method

.method public final getChameleonCode()Ljava/lang/String;
    .registers 4

    .line 810
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->supportChameleon:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 813
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonFileExist:Z

    if-nez v0, :cond_b

    return-object v1

    .line 816
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->isCarrierActivated()Z

    move-result p0

    if-nez p0, :cond_12

    return-object v1

    :cond_12
    const-string p0, "/carrier/chameleon.xml"

    const-string v0, "Operators.AndroidOperatorNetworkCode"

    .line 825
    invoke-static {p0, v0}, Lcom/android/server/power/ShutdownDialog;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@Power off sound CHAMELEON network code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownDialog"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_34

    const-string p0, "310000"

    :cond_34
    const/4 v0, -0x1

    .line 830
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_80

    goto :goto_5d

    :sswitch_3d
    const-string v2, "311870"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto :goto_5d

    :cond_46
    const/4 v0, 0x2

    goto :goto_5d

    :sswitch_48
    const-string v2, "311490"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto :goto_5d

    :cond_51
    const/4 v0, 0x1

    goto :goto_5d

    :sswitch_53
    const-string v2, "310120"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    :goto_5d
    packed-switch v0, :pswitch_data_8e

    const-string p0, "XAS"

    goto :goto_6b

    :pswitch_63
    const-string p0, "BST"

    goto :goto_6b

    :pswitch_66
    const-string p0, "VMU"

    goto :goto_6b

    :pswitch_69
    const-string p0, "SPR"

    .line 844
    :goto_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@Power off sound CHAMELEON is activated : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :sswitch_data_80
    .sparse-switch
        0x59d0375d -> :sswitch_53
        0x59d0b7d8 -> :sswitch_48
        0x59d0c69e -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_69
        :pswitch_66
        :pswitch_63
    .end packed-switch
.end method

.method public final getQmgCodeById(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo p0, "ro.build.product"

    .line 1087
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dream"

    .line 1088
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    return-object v0

    :cond_11
    packed-switch p1, :pswitch_data_30

    goto :goto_2f

    :pswitch_15
    const-string/jumbo p0, "ro.color.pinkgold"

    .line 1096
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :pswitch_1d
    const-string/jumbo p0, "ro.color.blue"

    .line 1095
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :pswitch_25
    const-string/jumbo p0, "ro.color.green"

    .line 1094
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :pswitch_2d
    const-string v0, "WH"

    :goto_2f
    return-object v0

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_25
        :pswitch_1d
        :pswitch_15
        :pswitch_2d
    .end packed-switch
.end method

.method public final getShutdownSoundPath()Ljava/lang/String;
    .registers 6

    .line 916
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    const-string v1, "ShutdownDialog"

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "!@[getShutdownSoundPath] b2bSoundPath"

    .line 917
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    return-object p0

    :cond_1b
    const-string/jumbo v0, "persist.sys.omc_respath"

    .line 922
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 924
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/media/audio/ui/PowerOff.ogg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_55

    const-string p0, "!@[getShutdownSoundPath] PATH_SHUTDOWNSOUND_SKU_OGG"

    .line 925
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 928
    :cond_55
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/media/audio/ui/PowerOff.wav"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_86

    const-string p0, "!@[getShutdownSoundPath] PATH_SHUTDOWNSOUND_SKU_WAV"

    .line 929
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 936
    :cond_86
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v0, :cond_b4

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/system/media/audio/ui/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    .line 938
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/PowerOff.ogg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_b4

    const-string p0, "!@[getShutdownSoundPath] chameleonPath"

    .line 940
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 948
    :cond_b4
    new-instance p0, Ljava/io/File;

    const-string v0, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_c7

    const-string p0, "!@[getShutdownSoundPath] PowerOff.wav"

    .line 949
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 955
    :cond_c7
    new-instance p0, Ljava/io/File;

    const-string v0, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_da

    const-string p0, "!@[getShutdownSoundPath] PowerOff.ogg"

    .line 956
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_da
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSystemVolume()I
    .registers 4

    .line 474
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_19

    const-string v1, "g_shutdown_mute"

    const-string v2, "1"

    .line 476
    invoke-virtual {p0, v1, v2}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    goto :goto_1b

    :cond_19
    const/16 p0, -0x270f

    :goto_1b
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 479
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "!@systemVol:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownDialog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public hasSound()Z
    .registers 3

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "has sound for power off : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->-$$Nest$fgethasSound(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownDialog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->-$$Nest$fgethasSound(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result p0

    return p0
.end method

.method public final isCarrierActivated()Z
    .registers 2

    const-string p0, "/carrier/chameleon.xml"

    const-string v0, "Operators.SubscriberCarrierId"

    .line 849
    invoke-static {p0, v0}, Lcom/android/server/power/ShutdownDialog;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "onCreate"

    .line 243
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 246
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_18

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 250
    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 254
    :cond_18
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 255
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 259
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, -0x1000000

    .line 260
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 263
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    .line 286
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    .line 287
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 294
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 296
    new-instance v0, Lcom/android/server/power/ShutdownDialog$DrawHandler;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    .line 297
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 300
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->dm:Landroid/hardware/display/DisplayManager;

    const-string v0, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 301
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->displays:[Landroid/view/Display;

    if-eqz p1, :cond_a8

    .line 302
    array-length p1, p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_a8

    const-string p1, "TAG"

    const-string v1, "bloom subdisplay exist"

    .line 303
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->displays:[Landroid/view/Display;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->displayContext:Landroid/content/Context;

    .line 305
    new-instance p1, Landroid/app/Presentation;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->displayContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->displays:[Landroid/view/Display;

    aget-object v0, v2, v0

    invoke-direct {p1, v1, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->subDialog:Landroid/app/Presentation;

    .line 306
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->displayContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->subImageView:Landroid/widget/ImageView;

    :cond_a8
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 312
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 313
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {p0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    return-void
.end method

.method public onStop()V
    .registers 1

    .line 318
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public prepareShutdown()V
    .registers 3

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "prepare shutdown dialog image and sound"

    .line 1181
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {p0}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare()V

    return-void
.end method

.method public final prepareSound(Ljava/lang/String;)V
    .registers 10

    const-string v0, "!@MediaPlayer exception. Sound will not start!"

    const-string/jumbo v1, "sound file.close"

    const-string v2, "ShutdownDialog"

    .line 485
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 487
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 489
    :try_start_17
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_85
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1c} :catch_7b
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_1c} :catch_71
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_1c} :catch_67
    .catchall {:try_start_17 .. :try_end_1c} :catchall_65

    .line 490
    :try_start_1c
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    .line 491
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 493
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v6, 0x1

    .line 494
    invoke-virtual {v4, v6}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const-string/jumbo v6, "stv_boot_sound"

    .line 495
    invoke-virtual {v4, v6}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 496
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 498
    invoke-virtual {v3, v6, v7}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v3

    .line 500
    invoke-virtual {p1, v4}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 501
    invoke-virtual {p1, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 502
    invoke-virtual {p1, v7}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 503
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 504
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_52} :catch_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_52} :catch_5f
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_52} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_52} :catch_59
    .catchall {:try_start_1c .. :try_end_52} :catchall_56

    .line 516
    :try_start_52
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_8f

    goto :goto_93

    :catchall_56
    move-exception p0

    move-object p1, v5

    goto :goto_94

    :catch_59
    move-exception p0

    move-object p1, v5

    goto :goto_68

    :catch_5c
    move-exception p0

    move-object p1, v5

    goto :goto_72

    :catch_5f
    move-exception p0

    move-object p1, v5

    goto :goto_7c

    :catch_62
    move-exception p0

    move-object p1, v5

    goto :goto_86

    :catchall_65
    move-exception p0

    goto :goto_94

    :catch_67
    move-exception p0

    .line 512
    :goto_68
    :try_start_68
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_65

    if-eqz p1, :cond_93

    .line 516
    :try_start_6d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_8f

    goto :goto_93

    :catch_71
    move-exception p0

    .line 510
    :goto_72
    :try_start_72
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_65

    if-eqz p1, :cond_93

    .line 516
    :try_start_77
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_8f

    goto :goto_93

    :catch_7b
    move-exception p0

    .line 508
    :goto_7c
    :try_start_7c
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_65

    if-eqz p1, :cond_93

    .line 516
    :try_start_81
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_8f

    goto :goto_93

    :catch_85
    move-exception p0

    .line 506
    :goto_86
    :try_start_86
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_65

    if-eqz p1, :cond_93

    .line 516
    :try_start_8b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception p0

    .line 519
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_93
    :goto_93
    return-void

    :goto_94
    if-eqz p1, :cond_9e

    .line 516
    :try_start_96
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_9e

    :catch_9a
    move-exception p1

    .line 519
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    :cond_9e
    :goto_9e
    throw p0
.end method

.method public final readColorId()I
    .registers 3

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->readWindowType()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    .line 1107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_21

    const/16 v1, 0x20

    .line 1108
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_21

    const/16 v0, 0x10

    .line 1110
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    and-int/lit8 v0, p0, 0xf

    :cond_21
    return v0
.end method

.method public final readWindowType()Ljava/lang/String;
    .registers 6

    const-string v0, "ShutdownDialog"

    .line 1119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 1124
    :try_start_8
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_2f
    .catchall {:try_start_8 .. :try_end_14} :catchall_2d

    .line 1125
    :goto_14
    :try_start_14
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 1126
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_22} :catch_2a
    .catchall {:try_start_14 .. :try_end_22} :catchall_27

    goto :goto_14

    .line 1133
    :cond_23
    :try_start_23
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_3d

    goto :goto_45

    :catchall_27
    move-exception p0

    move-object v2, v3

    goto :goto_4e

    :catch_2a
    move-exception p0

    move-object v2, v3

    goto :goto_30

    :catchall_2d
    move-exception p0

    goto :goto_4e

    :catch_2f
    move-exception p0

    .line 1129
    :goto_30
    :try_start_30
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_2d

    if-eqz v2, :cond_45

    .line 1133
    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_45

    :catch_3d
    move-exception p0

    .line 1135
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_45
    :goto_45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_4e
    if-eqz v2, :cond_5c

    .line 1133
    :try_start_50
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_5c

    :catch_54
    move-exception v1

    .line 1135
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_5c
    :goto_5c
    throw p0
.end method

.method public setSilentShutdown(Z)V
    .registers 2

    .line 1186
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    return-void
.end method

.method public start()V
    .registers 1

    .line 1196
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {p0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    return-void
.end method

.method public waitForAnimEnd(I)Z
    .registers 8

    .line 1144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1145
    :goto_9
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {p1}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkRunning()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 1146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    const-string v2, "ShutdownDialog"

    if-gtz p1, :cond_25

    const-string p0, "!@Animation finish wait timed out"

    .line 1148
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_25
    const-string p1, "!@wait for finish : sleep 100ms"

    .line 1151
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x64

    .line 1153
    :try_start_2c
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_9

    :catch_30
    const-string p1, "InterruptedException"

    .line 1155
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_36
    :goto_36
    const/4 p0, 0x1

    return p0
.end method
