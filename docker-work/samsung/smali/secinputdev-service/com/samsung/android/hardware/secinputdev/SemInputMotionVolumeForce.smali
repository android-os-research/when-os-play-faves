.class Lcom/samsung/android/hardware/secinputdev/SemInputMotionVolumeForce;
.super Lcom/samsung/android/hardware/secinputdev/SemInputMotion;
.source "SemInputMotionNoSupport.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemInputMotionVolumeForce"

.field private static final modelFileName:Ljava/lang/String; = ""


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 38
    const-string v0, "SemInputMotionVolumeForce"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionVolumeForce;->context:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method protected delivery([Ljava/lang/Object;)V
    .registers 2
    .param p1, "rawdata"    # [Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public destroy()V
    .registers 1

    .line 49
    invoke-super {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->destroy()V

    .line 50
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 53
    const-string v0, "dumping SemInputMotionVolumeForce"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    const-string v0, "Not Supported"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 56
    return-void
.end method

.method protected getMotionControl(Ljava/lang/String;)I
    .registers 3
    .param p1, "subtype"    # Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareTensorflow(Ljava/nio/MappedByteBuffer;)Z
    .registers 3
    .param p1, "mappedByteBuffer"    # Ljava/nio/MappedByteBuffer;

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected setMotionControl(Ljava/lang/String;I)V
    .registers 3
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "control"    # I

    .line 44
    return-void
.end method

.method protected startDelivery()V
    .registers 1

    .line 42
    return-void
.end method

.method protected stopDelivery()V
    .registers 1

    .line 46
    return-void
.end method
