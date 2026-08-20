.class public final Lcom/android/server/usb/UsbAlsaManager;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;
    }
.end annotation


# static fields
.field public static final ALSA_DIRECTORY:Ljava/lang/String; = "/dev/snd/"

.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "UsbAlsaManager"

.field public static final USB_DENYLIST_INPUT:I = 0x2

.field public static final USB_DENYLIST_OUTPUT:I = 0x1

.field public static final USB_PRODUCTID_PS4CONTROLLER_ZCT1:I = 0x5c4

.field public static final USB_PRODUCTID_PS4CONTROLLER_ZCT2:I = 0x9cc

.field public static final USB_VENDORID_SONY:I = 0x54c

.field public static final mIsSingleMode:Z = true

.field public static final sDeviceDenylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isBundleRemovedDone:Z

.field public final mAlsaDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/UsbAlsaDevice;",
            ">;"
        }
    .end annotation
.end field

.field public mAudioService:Landroid/media/IAudioService;

.field public final mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

.field public final mContext:Landroid/content/Context;

.field public final mHasMidiFeature:Z

.field public mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

.field public mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

.field public mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    .line 93
    new-instance v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    const/16 v2, 0x54c

    const/16 v3, 0x5c4

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;-><init>(III)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    const/16 v3, 0x9cc

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;-><init>(III)V

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceDenylist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaCardsParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/android/server/usb/UsbAlsaManager;->isBundleRemovedDone:Z

    .line 113
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    .line 116
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.software.midi"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    return-void
.end method

.method public static isDeviceDenylisted(III)Z
    .registers 7

    .line 102
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceDenylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    .line 103
    iget v3, v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mVendorId:I

    if-ne v3, p0, :cond_6

    iget v3, v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mProductId:I

    if-ne v3, p1, :cond_6

    .line 105
    iget p0, v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mFlags:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_21

    const/4 v2, 0x1

    :cond_21
    return v2
.end method


# virtual methods
.method public final declared-synchronized deselectAlsaDevice()V
    .registers 4

    monitor-enter p0

    .line 162
    :try_start_1
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deselectAlsaDevice() mSelectedDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-eqz v0, :cond_23

    .line 165
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->stop()V

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 168
    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 8

    .line 405
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 407
    iget-object p4, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {p4}, Lcom/android/internal/alsa/AlsaCardsParser;->getScanStatus()I

    move-result p4

    const-string v0, "cards_parser"

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 409
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/usb/UsbAlsaDevice;

    const-wide v0, 0x20b00000002L

    const-string v2, "alsa_devices"

    .line 410
    invoke-virtual {p4, p1, v2, v0, v1}, Lcom/android/server/usb/UsbAlsaDevice;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_1a

    .line 413
    :cond_31
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public final getAlsaDeviceListIndexFor(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 171
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 172
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbAlsaDevice;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public logDevices(Ljava/lang/String;)V
    .registers 4

    .line 431
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "----------------"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 433
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 435
    :cond_32
    sget-object p0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logDevicesList(Ljava/lang/String;)V
    .registers 6

    .line 418
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "----------------"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 420
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string v2, "  -->"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "  <--"

    .line 422
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 424
    :cond_49
    sget-object p0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removeAlsaDeviceFromList(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;
    .registers 3

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->getAlsaDeviceListIndexFor(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_10

    .line 182
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/UsbAlsaDevice;

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V
    .registers 6

    monitor-enter p0

    .line 133
    :try_start_1
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectAlsaDevice() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-eqz v1, :cond_1f

    .line 138
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice()V

    .line 146
    :cond_1f
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "usb_audio_automatic_routing_disabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_36

    const-string p1, "USB_AUDIO_AUTOMATIC_ROUTING_DISABLED"

    .line 149
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_43

    .line 150
    monitor-exit p0

    return-void

    .line 153
    :cond_36
    :try_start_36
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 154
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->start()V

    const-string/jumbo p1, "selectAlsaDevice() - done."

    .line 156
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_43

    .line 158
    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public selectDefaultDevice()Lcom/android/server/usb/UsbAlsaDevice;
    .registers 5

    .line 190
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "selectDefaultDevice()"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_33

    .line 194
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaDevice;

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  alsaDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_32

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    :cond_32
    return-object v1

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public setPeripheralMidiState(ZII)V
    .registers 11

    .line 363
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_52

    .line 367
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-nez v0, :cond_52

    .line 368
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 369
    iget-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1040e86

    .line 370
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x1040e85

    .line 372
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x1040e87

    .line 374
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "product"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "alsa_card"

    .line 376
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "alsa_device"

    .line 377
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;IIII)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    goto :goto_5e

    :cond_52
    if-nez p1, :cond_5e

    .line 380
    iget-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-eqz p1, :cond_5e

    .line 381
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p1, 0x0

    .line 382
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    :cond_5e
    :goto_5e
    return-void
.end method

.method public systemReady()V
    .registers 2

    const-string v0, "audio"

    .line 122
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    return-void
.end method

.method public usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .registers 19

    move-object v0, p0

    .line 210
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usbDeviceAdded(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nm:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v2}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()I

    .line 218
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    move-object/from16 v7, p1

    .line 219
    invoke-virtual {v2, v7}, Lcom/android/internal/alsa/AlsaCardsParser;->findCardNumFor(Ljava/lang/String;)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v2

    if-nez v2, :cond_3d

    const-string v0, "no AlsaCardRecord"

    .line 221
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 226
    :cond_3d
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasInput()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_56

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceDenylisted(III)Z

    move-result v3

    if-nez v3, :cond_56

    move v9, v4

    goto :goto_57

    :cond_56
    move v9, v13

    .line 229
    :goto_57
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasOutput()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    invoke-static {v3, v5, v4}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceDenylisted(III)Z

    move-result v3

    if-nez v3, :cond_6d

    move v8, v4

    goto :goto_6e

    :cond_6d
    move v8, v13

    .line 233
    :goto_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasInput: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasOutput:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_8e

    if-eqz v8, :cond_c4

    .line 236
    :cond_8e
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v10

    .line 237
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v11

    .line 238
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isDock()Z

    move-result v12

    .line 240
    iget-object v4, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    if-nez v4, :cond_a4

    const-string v0, "no AudioService"

    .line 241
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 245
    :cond_a4
    new-instance v14, Lcom/android/server/usb/UsbAlsaDevice;

    .line 246
    invoke-virtual {v2}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v5

    const/4 v6, 0x0

    move-object v3, v14

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v12}, Lcom/android/server/usb/UsbAlsaDevice;-><init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZZ)V

    .line 251
    invoke-virtual {v2}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardDescription()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-virtual {v14, v3, v2}, Lcom/android/server/usb/UsbAlsaDevice;->setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 253
    invoke-virtual {p0, v14}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    :cond_c4
    const-string v2, "deviceAdded()"

    .line 257
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V

    const-string v0, "deviceAdded() - done"

    .line 260
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public usbDeviceAddedBundle(Ljava/lang/String;I)V
    .registers 18

    move-object v0, p0

    .line 292
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usbDeviceAddedBundle(): deviceAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cardNum="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    if-nez v2, :cond_2e

    const-string v0, "no AudioService"

    .line 297
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 302
    :cond_2e
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "usb_audio_automatic_routing_disabled"

    const/4 v14, 0x0

    invoke-static {v2, v4, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_44

    const-string v0, "Disable USB audio routing is ON at usbDeviceAddedBundle"

    .line 305
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 310
    :cond_44
    new-instance v1, Lcom/android/server/usb/UsbAlsaDevice;

    iget-object v5, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v4, v1

    move/from16 v6, p2

    move-object/from16 v8, p1

    invoke-direct/range {v4 .. v13}, Lcom/android/server/usb/UsbAlsaDevice;-><init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZZ)V

    .line 315
    iput-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 316
    iput-boolean v14, v0, Lcom/android/server/usb/UsbAlsaManager;->isBundleRemovedDone:Z

    const-string v0, "USB-Audio - Samsung USB C Earphone"

    const-string v2, ""

    .line 317
    invoke-virtual {v1, v0, v2}, Lcom/android/server/usb/UsbAlsaDevice;->setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 319
    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionStateByBundle(Z)V

    return-void
.end method

.method public declared-synchronized usbDeviceRemoved(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 266
    :try_start_1
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeAlsaDeviceFromList(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;

    move-result-object p1

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB Audio Device Removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaManager;->isBundleRemovedDone:Z

    if-eqz v1, :cond_48

    const-string/jumbo v1, "usbDeviceRemoved set mSelectedBundleDevice to null, as it\'s not set even Bundle Remove was done"

    .line 274
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->isBundleRemovedDone:Z

    :cond_48
    if-eqz p1, :cond_54

    .line 279
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-ne p1, v0, :cond_54

    .line 280
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice()V

    .line 281
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice()Lcom/android/server/usb/UsbAlsaDevice;

    :cond_54
    const-string/jumbo p1, "usbDeviceRemoved()"

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    .line 286
    monitor-exit p0

    return-void

    :catchall_5c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public usbDeviceRemovedBundle(Ljava/lang/String;I)V
    .registers 18

    move-object v0, p0

    .line 325
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usbDeviceRemovedBundle(): deviceAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cardNum="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    if-nez v2, :cond_2e

    const-string v0, "no AudioService"

    .line 330
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 335
    :cond_2e
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "usb_audio_automatic_routing_disabled"

    const/4 v14, 0x0

    invoke-static {v2, v4, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_44

    const-string v0, "Disable USB audio routing is ON at usbDeviceRemovedBundle"

    .line 338
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 342
    :cond_44
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-nez v2, :cond_4e

    const-string v0, "No Selected Bundel Device at usbDeviceRemovedBundle"

    .line 343
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 348
    :cond_4e
    new-instance v1, Lcom/android/server/usb/UsbAlsaDevice;

    iget-object v5, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v4, v1

    move/from16 v6, p2

    move-object/from16 v8, p1

    invoke-direct/range {v4 .. v13}, Lcom/android/server/usb/UsbAlsaDevice;-><init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZZ)V

    const/4 v2, 0x0

    .line 353
    iput-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    const/4 v2, 0x1

    .line 354
    iput-boolean v2, v0, Lcom/android/server/usb/UsbAlsaManager;->isBundleRemovedDone:Z

    const-string v0, "USB-Audio - Samsung USB C Earphone"

    const-string v2, ""

    .line 355
    invoke-virtual {v1, v0, v2}, Lcom/android/server/usb/UsbAlsaDevice;->setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1, v14}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionStateByBundle(Z)V

    return-void
.end method
