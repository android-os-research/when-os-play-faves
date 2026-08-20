.class public Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;
.super Ljava/lang/Object;
.source "SpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundPathInfo"
.end annotation


# static fields
.field public static final PATH_SPLITTER:Ljava/lang/String; = ","


# instance fields
.field public attachSoundPath:Ljava/lang/String;

.field public detachSoundPath:Ljava/lang/String;

.field public final mWriteSettingHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/server/smartclip/SpenThemeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenThemeManager;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance p1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;

    invoke-direct {p1, p0}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;-><init>(Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;)V

    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->mWriteSettingHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/smartclip/SpenThemeManager;Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;-><init>(Lcom/android/server/smartclip/SpenThemeManager;)V

    return-void
.end method


# virtual methods
.method public getPaths()Ljava/lang/String;
    .registers 4

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 449
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get paths = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public handleWriteSetting(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 477
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->getPaths()Ljava/lang/String;

    move-result-object p0

    .line 478
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write setting paths = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string/jumbo v1, "pen_detachment_notification"

    .line 480
    invoke-static {p1, v1, p0, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public readSetting(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 459
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string/jumbo v1, "pen_detachment_notification"

    .line 458
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read setting paths = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->setPaths(Ljava/lang/String;)V

    return-void
.end method

.method public setPaths(Ljava/lang/String;)V
    .registers 5

    .line 429
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set paths = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    :cond_20
    const-string v0, ","

    .line 434
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 435
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2d

    goto :goto_37

    :cond_2d
    const/4 v0, 0x0

    .line 439
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 440
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    :cond_37
    :goto_37
    return-void
.end method

.method public setPaths(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 424
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    .line 425
    iput-object p2, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attach sound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detach sound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeSetting(Landroid/content/Context;)V
    .registers 3

    .line 469
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->mWriteSettingHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
