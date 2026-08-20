.class public Lcom/android/internal/app/MediaRouteControllerDialog;
.super Landroid/app/AlertDialog;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final blacklist VOLUME_UPDATE_DELAY_MILLIS:I = 0xfa


# instance fields
.field private blacklist mAttachedToWindow:Z

.field private final blacklist mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

.field private blacklist mControlView:Landroid/view/View;

.field private blacklist mCreated:Z

.field private blacklist mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mMediaRouteConnectingState:[I

.field private blacklist mMediaRouteOnState:[I

.field private final blacklist mRoute:Landroid/media/MediaRouter$RouteInfo;

.field private final blacklist mRouter:Landroid/media/MediaRouter;

.field private blacklist mVolumeControlEnabled:Z

.field private blacklist mVolumeLayout:Landroid/widget/LinearLayout;

.field private blacklist mVolumeSlider:Landroid/widget/SeekBar;

.field private blacklist mVolumeSliderTouched:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRoute(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRouter(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeSlider(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeSliderTouched(Lcom/android/internal/app/MediaRouteControllerDialog;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVolumeSliderTouched(Lcom/android/internal/app/MediaRouteControllerDialog;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdate(Lcom/android/internal/app/MediaRouteControllerDialog;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateVolume(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 65
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_30

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingState:[I

    .line 66
    new-array v0, v0, [I

    fill-array-data v0, :array_38

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnState:[I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 80
    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    .line 81
    new-instance v1, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback-IA;)V

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 82
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 83
    return-void

    nop

    :array_30
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data

    :array_38
    .array-data 4
        0x10102fe
        0x101009e
    .end array-data
.end method

.method private blacklist getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v1, :cond_7

    .line 297
    return-object v0

    .line 298
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 299
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 300
    .local v0, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingState:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 301
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 303
    .end local v0    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 304
    .restart local v0    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnState:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 305
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private blacklist isVolumeControlAvailable()Z
    .registers 3

    .line 322
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v0

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private blacklist obtainMediaRouteButtonDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 284
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 285
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103ad

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_19

    .line 286
    const/4 v2, 0x0

    return-object v2

    .line 288
    :cond_19
    new-array v2, v4, [I

    const v3, 0x112005a

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 289
    .local v2, "drawableAttrs":[I
    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 290
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 291
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    return-object v4
.end method

.method private blacklist update()Z
    .registers 5

    .line 253
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5b

    .line 258
    :cond_11
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    .line 261
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 262
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5a

    .line 263
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 264
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_57

    .line 265
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 266
    .local v1, "animDrawable":Landroid/graphics/drawable/AnimationDrawable;
    iget-boolean v3, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    if-nez v3, :cond_4e

    iget-object v3, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 269
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 270
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 272
    :cond_44
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_57

    .line 273
    :cond_4e
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v3

    if-nez v3, :cond_57

    .line 274
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 277
    .end local v1    # "animDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_57
    :goto_57
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :cond_5a
    return v2

    .line 254
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->dismiss()V

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist updateVolume()V
    .registers 3

    .line 310
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    if-nez v0, :cond_2e

    .line 311
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->isVolumeControlAvailable()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 312
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2e

    .line 316
    :cond_27
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public blacklist getMediaControlView()Landroid/view/View;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getRoute()Landroid/media/MediaRouter$RouteInfo;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public blacklist isVolumeControlEnabled()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    return v0
.end method

.method public whitelist onAttachedToWindow()V
    .registers 5

    .line 218
    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    .line 221
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 222
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    .line 223
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 139
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1040742

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/MediaRouteControllerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$1;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/app/MediaRouteControllerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900bb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 156
    .local v1, "customView":Landroid/view/View;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/MediaRouteControllerDialog;->setView(Landroid/view/View;IIII)V

    .line 157
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x102029c

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 160
    .local v2, "customPanelView":Landroid/view/View;
    const/4 v3, 0x0

    if-eqz v2, :cond_4a

    .line 161
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 163
    :cond_4a
    const v4, 0x10203f7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    .line 164
    const v4, 0x10203f8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 165
    new-instance v5, Lcom/android/internal/app/MediaRouteControllerDialog$2;

    invoke-direct {v5, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$2;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 201
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->obtainMediaRouteButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCreated:Z

    .line 203
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    move-result v4

    if-eqz v4, :cond_96

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    .line 205
    const v4, 0x10203f3

    .line 206
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 207
    .local v4, "controlFrame":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    if-eqz v5, :cond_91

    .line 208
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 209
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_96

    .line 211
    :cond_91
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 214
    .end local v4    # "controlFrame":Landroid/widget/FrameLayout;
    :cond_96
    :goto_96
    return-void
.end method

.method public blacklist onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    .line 230
    invoke-super {p0}, Landroid/app/AlertDialog;->onDetachedFromWindow()V

    .line 231
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 235
    const/16 v0, 0x19

    if-eq p1, v0, :cond_e

    const/16 v1, 0x18

    if-ne p1, v1, :cond_9

    goto :goto_e

    .line 240
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 237
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_15

    const/4 v0, -0x1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    invoke-virtual {v1, v0}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 238
    return v2
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 245
    const/16 v0, 0x19

    if-eq p1, v0, :cond_e

    const/16 v0, 0x18

    if-ne p1, v0, :cond_9

    goto :goto_e

    .line 249
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 247
    :cond_e
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setVolumeControlEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    if-eq v0, p1, :cond_d

    .line 122
    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 123
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCreated:Z

    if-eqz v0, :cond_d

    .line 124
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    .line 127
    :cond_d
    return-void
.end method
