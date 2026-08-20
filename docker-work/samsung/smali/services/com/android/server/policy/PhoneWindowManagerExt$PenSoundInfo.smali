.class public Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PenSoundInfo"
.end annotation


# static fields
.field public static final OMC_PEN_ATTACH_SOUND_FILE_NAME:Ljava/lang/String; = "Pen_att_noti1.ogg"

.field public static final OMC_PEN_DETACH_SOUND_FILE_NAME:Ljava/lang/String; = "Pen_det_noti1.ogg"

.field public static final OMC_PEN_SOUND_PATH:Ljava/lang/String; = "/media/audio/spen/"

.field public static final PROPERTY_OMC_RESOURCE_PATH:Ljava/lang/String; = "persist.sys.omc_respath"


# instance fields
.field public mAttachPenSoundPath:Ljava/lang/String;

.field public mDetachPenSoundPath:Ljava/lang/String;

.field public mPenAttachSoundId:I

.field public mPenDetachSoundId:I

.field public mPenSoundPath:Ljava/lang/String;

.field public mPenSoundPool:Landroid/media/SoundPool;

.field public mPenSoundStreamId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAttachPenSoundPath(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDetachPenSoundPath(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPenAttachSoundId(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPenDetachSoundId(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 5678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5668
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 5669
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 5671
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    .line 5679
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->updatePenSound(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getFile(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 5755
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5756
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_16

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOMCPenSoundPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo p0, "persist.sys.omc_respath"

    .line 5750
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 5751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/media/audio/spen/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    :cond_1e
    const-string p0, ""

    :goto_20
    return-object p0
.end method

.method public getPenSoundPath()Ljava/lang/String;
    .registers 1

    .line 5768
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    return-object p0
.end method

.method public playPenSound(Z)V
    .registers 12

    .line 5730
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_a

    .line 5734
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    goto :goto_c

    :cond_a
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I

    :goto_c
    const-string v8, "Play pen sound failed, soundId="

    const-string v9, "PhoneWindowManagerExt"

    if-nez p1, :cond_25

    .line 5736
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5741
    :cond_25
    :try_start_25
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 5742
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundStreamId:I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3b} :catch_3c

    goto :goto_4e

    .line 5744
    :catch_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    return-void
.end method

.method public setPenSoundPath(Ljava/lang/String;)V
    .registers 2

    .line 5764
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->updatePenSound(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 5773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PenSoundInfo{attachPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detachPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updatePenSound(Ljava/lang/String;)V
    .registers 8

    .line 5683
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    const-string p1, "Pen_att_noti1.ogg"

    .line 5686
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->getOMCPenSoundPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Pen_det_noti1.ogg"

    .line 5687
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->getOMCPenSoundPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5688
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 5689
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 5692
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_OMC_SPEN_SOUND:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_25

    if-eqz v1, :cond_25

    if-eqz v2, :cond_25

    .line 5694
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 5695
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    goto :goto_42

    .line 5698
    :cond_25
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 5699
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 5700
    array-length v0, p1

    if-le v0, v5, :cond_42

    .line 5701
    aget-object v0, p1, v4

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 5702
    aget-object p1, p1, v5

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 5707
    :cond_42
    :goto_42
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "PhoneWindowManagerExt"

    if-nez p1, :cond_90

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 5708
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_55

    goto :goto_90

    .line 5713
    :cond_55
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    if-nez p1, :cond_7d

    .line 5715
    :try_start_59
    new-instance p1, Landroid/media/SoundPool;

    const/4 v1, 0x2

    invoke-direct {p1, v1, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    .line 5716
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    invoke-virtual {p1, v1, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    .line 5717
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    invoke-virtual {p1, v1, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_73} :catch_74

    goto :goto_8f

    :catch_74
    const-string p1, "Cannot load pen sound"

    .line 5720
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 5721
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    goto :goto_8f

    .line 5724
    :cond_7d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    .line 5725
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I

    :goto_8f
    return-void

    .line 5709
    :cond_90
    :goto_90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pen sound path was wrong. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
