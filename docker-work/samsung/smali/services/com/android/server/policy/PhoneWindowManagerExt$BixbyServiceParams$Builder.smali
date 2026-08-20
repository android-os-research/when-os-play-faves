.class public Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public doublePress:Z

.field public event:Landroid/view/KeyEvent;

.field public interactive:Z

.field public isPowerCombination:Z

.field public isUnlockFP:Z

.field public longPress:Z

.field public metaIPress:Z

.field public showToast:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetdoublePress(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->doublePress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetevent(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Landroid/view/KeyEvent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->event:Landroid/view/KeyEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetinteractive(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->interactive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisPowerCombination(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->isPowerCombination:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisUnlockFP(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->isUnlockFP:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetlongPress(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->longPress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmetaIPress(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->metaIPress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetshowToast(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->showToast:Z

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 3331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3322
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->event:Landroid/view/KeyEvent;

    const/4 v0, 0x0

    .line 3323
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->interactive:Z

    .line 3324
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->showToast:Z

    .line 3325
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->metaIPress:Z

    .line 3326
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->longPress:Z

    .line 3327
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->doublePress:Z

    .line 3328
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->isUnlockFP:Z

    .line 3329
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->isPowerCombination:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;Z)V
    .registers 4

    .line 3334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3324
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->showToast:Z

    .line 3325
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->metaIPress:Z

    .line 3326
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->longPress:Z

    .line 3327
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->doublePress:Z

    .line 3328
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->isUnlockFP:Z

    .line 3329
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->isPowerCombination:Z

    .line 3335
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->event:Landroid/view/KeyEvent;

    .line 3336
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->interactive:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;
    .registers 3

    .line 3340
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams-IA;)V

    return-object v0
.end method

.method public setDoublePress()Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 3362
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->doublePress:Z

    return-object p0
.end method

.method public setLongPress()Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 3355
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->longPress:Z

    return-object p0
.end method

.method public setMetaIPress()Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 3349
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->metaIPress:Z

    return-object p0
.end method

.method public setPowerCombination(Z)Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;
    .registers 2

    .line 3376
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->isPowerCombination:Z

    return-object p0
.end method

.method public setUnlockFP()Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 3369
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->isUnlockFP:Z

    return-object p0
.end method

.method public showToast()Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 3344
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->showToast:Z

    return-object p0
.end method
