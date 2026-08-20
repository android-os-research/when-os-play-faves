.class public Lcom/android/server/usb/UsbStringTable;
.super Ljava/lang/Object;
.source "UsbStringTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    }
.end annotation


# static fields
.field public static final STRING_USB_APPLICATION_SPECIFIC:Ljava/lang/String; = "Application Specific"

.field public static final STRING_USB_AUDIO:Ljava/lang/String; = "Audio"

.field public static final STRING_USB_CDC_CONTROL:Ljava/lang/String; = "CDC Control"

.field public static final STRING_USB_CDC_DATA:Ljava/lang/String; = "CDC Data"

.field public static final STRING_USB_CONTENT_SECURITY:Ljava/lang/String; = "Content Security"

.field public static final STRING_USB_DEVICE:Ljava/lang/String; = "Interface Descriptors"

.field public static final STRING_USB_DIAGNOSTIC_DEVICE:Ljava/lang/String; = "Diagnostic Device"

.field public static final STRING_USB_HID:Ljava/lang/String; = "HID"

.field public static final STRING_USB_HUB:Ljava/lang/String; = "Hub"

.field public static final STRING_USB_IMAGE:Ljava/lang/String; = "Image"

.field public static final STRING_USB_MASS_STROAGE:Ljava/lang/String; = "Mass Storage"

.field public static final STRING_USB_MISCELLANEOUS:Ljava/lang/String; = "Miscellaneous"

.field public static final STRING_USB_PERSONAL_HEALTHCARE:Ljava/lang/String; = "Personal Healthcare"

.field public static final STRING_USB_PHYSICAL:Ljava/lang/String; = "Physical"

.field public static final STRING_USB_PRINTER:Ljava/lang/String; = "Printer"

.field public static final STRING_USB_SMART_CARD:Ljava/lang/String; = "Smart Card"

.field public static final STRING_USB_VENDOR_SPECIFIC:Ljava/lang/String; = "Vendor Specific"

.field public static final STRING_USB_VIDEO:Ljava/lang/String; = "Video"

.field public static final STRING_USB_WIRELESS_CONTROLLER:Ljava/lang/String; = "Wireless Controller"

.field public static final TAG:Ljava/lang/String; = "UsbDevice"


# instance fields
.field public final UsbClassSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/usb/UsbStringTable$UsbClassMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    .line 153
    new-instance v6, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Interface Descriptors"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v1, 0x1

    const-string v2, "Audio"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v1, 0x2

    const-string v2, "CDC Control"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v1, 0x3

    const-string v2, "HID"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v1, 0x5

    const-string v2, "Physical"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v6, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "Image"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v1, 0x7

    const-string v2, "Printer"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v1, 0x8

    const-string v2, "Mass Storage"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Hub"

    const-string v6, "Full speed Hub"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x1

    const-string v5, "Hub"

    const-string v6, "Hi-speed hub with single TT"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x2

    const-string v5, "Hub"

    const-string v6, "Hi-speed hub with multiple TTs"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v1, 0xa

    const-string v2, "CDC Data"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v1, 0xb

    const-string v2, "Smart Card"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v6, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xd

    const/4 v4, 0x0

    const-string v5, "Content Security"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v1, 0xe

    const-string v2, "Video"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v1, 0xf

    const-string v2, "Personal Healthcare"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v6, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xdc

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "Diagnostic Device"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xe0

    const-string v5, "Wireless Controller"

    const-string v6, "Bluetooth Programming Interface"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x2

    const-string v5, "Wireless Controller"

    const-string v6, "UWB Radio Control Interface"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x3

    const-string v5, "Wireless Controller"

    const-string v6, "Remote NDIS"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x4

    const-string v5, "Wireless Controller"

    const-string v6, "Bluetooth AMP Controller"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "Wireless Controller"

    const-string v6, "Host Wire Adapter Control/Data interface"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x2

    const-string v5, "Wireless Controller"

    const-string v6, "Device Wire Adapter Control/Data interface"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x3

    const-string v5, "Wireless Controller"

    const-string v6, "Device Wire Adapter Isochronous interface"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xef

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "Miscellaneous"

    const-string v6, "Active Sync device"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x2

    const-string v5, "Miscellaneous"

    const-string v6, "Palm Sync"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "Miscellaneous"

    const-string v6, "Interface Association Descriptor"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x2

    const-string v5, "Miscellaneous"

    const-string v6, "Wire Adapter Multifunction"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "Miscellaneous"

    const-string v6, "Cable Based Association Framework"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xfe

    const/4 v3, 0x1

    const-string v5, "Miscellaneous"

    const-string v6, "Device Firmware Upgrade"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "Miscellaneous"

    const-string v6, "IRDA Bridge device"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v3, 0x3

    const-string v5, "Miscellaneous"

    const-string v6, "USB Test and Measurement Device"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x1

    const-string v5, "Miscellaneous"

    const-string v6, "USB Test and Measurement Device"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v1, 0xff

    const-string v2, "Vendor Specific"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public findString(III)Ljava/lang/String;
    .registers 8

    .line 135
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_3
    const-string v1, "Unknown device"

    .line 137
    iget-object v2, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    .line 138
    iget-object p0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 139
    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 140
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    .line 141
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->equals(III)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 142
    invoke-virtual {v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    :cond_29
    monitor-exit v0

    return-object v1

    :catchall_2b
    move-exception p0

    .line 149
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method
