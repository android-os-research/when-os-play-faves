.class public Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BixbyServiceParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;
    }
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
.method public static bridge synthetic -$$Nest$fgetdoublePress(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->doublePress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetevent(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Landroid/view/KeyEvent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->event:Landroid/view/KeyEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetinteractive(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->interactive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisPowerCombination(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->isPowerCombination:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisUnlockFP(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->isUnlockFP:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetlongPress(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->longPress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmetaIPress(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->metaIPress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetshowToast(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->showToast:Z

    return p0
.end method

.method public constructor <init>(Landroid/view/KeyEvent;ZZZZZZZ)V
    .registers 9

    .line 3304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3305
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->event:Landroid/view/KeyEvent;

    .line 3306
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->interactive:Z

    .line 3307
    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->showToast:Z

    .line 3308
    iput-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->metaIPress:Z

    .line 3309
    iput-boolean p5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->longPress:Z

    .line 3310
    iput-boolean p6, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->doublePress:Z

    .line 3311
    iput-boolean p7, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->isUnlockFP:Z

    .line 3312
    iput-boolean p8, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->isPowerCombination:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)V
    .registers 11

    .line 3316
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->-$$Nest$fgetevent(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->-$$Nest$fgetinteractive(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z

    move-result v2

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->-$$Nest$fgetshowToast(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z

    move-result v3

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->-$$Nest$fgetmetaIPress(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z

    move-result v4

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->-$$Nest$fgetlongPress(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z

    move-result v5

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->-$$Nest$fgetdoublePress(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z

    move-result v6

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->-$$Nest$fgetisUnlockFP(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z

    move-result v7

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->-$$Nest$fgetisPowerCombination(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)Z

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;-><init>(Landroid/view/KeyEvent;ZZZZZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;)V

    return-void
.end method
