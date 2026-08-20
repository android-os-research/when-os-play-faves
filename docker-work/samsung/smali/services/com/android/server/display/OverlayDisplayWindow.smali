.class public final Lcom/android/server/display/OverlayDisplayWindow;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayWindow$Listener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "OverlayDisplayWindow"


# instance fields
.field public final DISABLE_MOVE_AND_RESIZE:Z

.field public final INITIAL_SCALE:F

.field public final MAX_SCALE:F

.field public final MIN_SCALE:F

.field public final WINDOW_ALPHA:F

.field public final mContext:Landroid/content/Context;

.field public final mDefaultDisplay:Landroid/view/Display;

.field public final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field public mDensityDpi:I

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public final mGravity:I

.field public mHeight:I

.field public final mListener:Lcom/android/server/display/OverlayDisplayWindow$Listener;

.field public mLiveScale:F

.field public mLiveTranslationX:F

.field public mLiveTranslationY:F

.field public final mName:Ljava/lang/String;

.field public final mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field public final mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field public final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field public mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field public final mSecure:Z

.field public final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field public mTextureView:Landroid/view/TextureView;

.field public mTitle:Ljava/lang/String;

.field public mTitleTextView:Landroid/widget/TextView;

.field public mWidth:I

.field public mWindowContent:Landroid/view/View;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field public mWindowScale:F

.field public mWindowVisible:Z

.field public mWindowX:I

.field public mWindowY:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDefaultDisplay(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/Display;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultDisplayInfo(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGestureDetector(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/GestureDetector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow$Listener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mListener:Lcom/android/server/display/OverlayDisplayWindow$Listener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLiveScale(Lcom/android/server/display/OverlayDisplayWindow;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLiveTranslationX(Lcom/android/server/display/OverlayDisplayWindow;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLiveTranslationY(Lcom/android/server/display/OverlayDisplayWindow;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScaleGestureDetector(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/ScaleGestureDetector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLiveScale(Lcom/android/server/display/OverlayDisplayWindow;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLiveTranslationX(Lcom/android/server/display/OverlayDisplayWindow;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLiveTranslationY(Lcom/android/server/display/OverlayDisplayWindow;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveWindowParams(Lcom/android/server/display/OverlayDisplayWindow;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->saveWindowParams()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDefaultDisplayInfo(Lcom/android/server/display/OverlayDisplayWindow;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIIZLcom/android/server/display/OverlayDisplayWindow$Listener;)V
    .registers 12

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 57
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->INITIAL_SCALE:F

    const v0, 0x3e99999a    # 0.3f

    .line 58
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->MIN_SCALE:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->MAX_SCALE:F

    const v1, 0x3f4ccccd    # 0.8f

    .line 60
    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->WINDOW_ALPHA:F

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->DISABLE_MOVE_AND_RESIZE:Z

    .line 82
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 99
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    .line 300
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$1;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 326
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$2;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 352
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$3;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 376
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$4;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 388
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayWindow$5;-><init>(Lcom/android/server/display/OverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 105
    invoke-static {}, Landroid/view/ThreadedRenderer;->disableVsync()V

    .line 106
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mName:Ljava/lang/String;

    .line 108
    iput p6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mGravity:I

    .line 109
    iput-boolean p7, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSecure:Z

    .line 110
    iput-object p8, p0, Lcom/android/server/display/OverlayDisplayWindow;->mListener:Lcom/android/server/display/OverlayDisplayWindow$Listener;

    const-string p2, "display"

    .line 112
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo p2, "window"

    .line 114
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    .line 119
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    .line 121
    invoke-virtual {p0, p3, p4, p5, v1}, Lcom/android/server/display/OverlayDisplayWindow;->resize(IIIZ)V

    .line 123
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->createWindow()V

    return-void
.end method


# virtual methods
.method public final clearLiveState()V
    .registers 2

    const/4 v0, 0x0

    .line 295
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    .line 296
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 297
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    return-void
.end method

.method public final createWindow()V
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900ea

    const/4 v2, 0x0

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    .line 206
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    const v1, 0x102047f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setPivotX(F)V

    .line 211
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setPivotY(F)V

    .line 212
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 213
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    const v2, 0x1020480

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitleTextView:Landroid/widget/TextView;

    .line 219
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7ea

    invoke-direct {v0, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 223
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x1000328

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 228
    iget-boolean v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSecure:Z

    if-eqz v3, :cond_77

    or-int/lit16 v2, v2, 0x2000

    .line 229
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 235
    :cond_77
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v0, :cond_89

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->isDexEmulatorWindow()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 236
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 239
    :cond_89
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x3f4ccccd    # 0.8f

    .line 241
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/16 v2, 0x33

    .line 242
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 243
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 246
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 250
    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mGravity:I

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_be

    move v2, v1

    goto :goto_c2

    .line 251
    :cond_be
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_c2
    iput v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    const/16 v2, 0x30

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_ca

    goto :goto_ce

    .line 253
    :cond_ca
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_ce
    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 254
    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    return-void
.end method

.method public dismiss()V
    .registers 3

    .line 142
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v0, :cond_15

    .line 143
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    :cond_15
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mWindowVisible="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mWindowX="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mWindowY="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mWindowScale="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mWindowParams="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    if-eqz p2, :cond_ad

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mTextureView.getScaleX()="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getScaleX()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mTextureView.getScaleY()="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getScaleY()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    :cond_ad
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mLiveTranslationX="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mLiveTranslationY="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mLiveScale="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final isDexEmulatorWindow()Z
    .registers 4

    .line 410
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "overlay_display_devices"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_11

    return v0

    :cond_11
    const-string v1, "#"

    .line 415
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 416
    array-length v1, p0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_28

    aget-object p0, p0, v0

    const-string v1, "dex"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 v0, 0x1

    :cond_28
    return v0
.end method

.method public relayout()V
    .registers 3

    .line 170
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v0, :cond_10

    .line 171
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateWindowParams()V

    .line 172
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    return-void
.end method

.method public resize(III)V
    .registers 5

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/display/OverlayDisplayWindow;->resize(IIIZ)V

    return-void
.end method

.method public final resize(IIIZ)V
    .registers 6

    .line 154
    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    .line 155
    iput p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    .line 156
    iput p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDensityDpi:I

    .line 157
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iget p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    .line 159
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p2, v0

    iget p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, p2, v0

    iget p3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDensityDpi:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x3

    aput-object p3, p2, v0

    const p3, 0x1040457

    .line 157
    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    .line 160
    iget-boolean p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mSecure:Z

    if-eqz p1, :cond_5c

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1040456

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTitle:Ljava/lang/String;

    :cond_5c
    if-eqz p4, :cond_61

    .line 165
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    :cond_61
    return-void
.end method

.method public final saveWindowParams()V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    .line 289
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    .line 290
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    .line 291
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->clearLiveState()V

    return-void
.end method

.method public show()V
    .registers 4

    .line 127
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    if-nez v0, :cond_2c

    .line 128
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 130
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void

    .line 134
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->clearLiveState()V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->updateWindowParams()V

    .line 136
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    :cond_2c
    return-void
.end method

.method public final updateDefaultDisplayInfo()Z
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "OverlayDisplayWindow"

    const-string v0, "Cannot show overlay display because there is no default display upon which to show it."

    .line 194
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public final updateWindowParams()V
    .registers 8

    .line 258
    iget v0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    mul-float/2addr v0, v1

    .line 259
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 261
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 263
    iget v2, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    div-float v2, v0, v2

    sub-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    .line 264
    iget v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 265
    iget v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 266
    iget v4, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    add-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 267
    iget v5, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    add-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 268
    iget-object v5, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    sub-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 269
    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    sub-int/2addr v6, v3

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 278
    iget-object v5, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v5, v0}, Landroid/view/TextureView;->setScaleX(F)V

    .line 279
    iget-object v5, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v5, v0}, Landroid/view/TextureView;->setScaleY(F)V

    .line 281
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 282
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 283
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 284
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method
