.class Lcom/samsung/android/hardware/secinputdev/SemInputMotionPalmMute;
.super Lcom/samsung/android/hardware/secinputdev/SemInputMotion;
.source "SemInputMotionNoSupport.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemInputMotionPalmMute"

.field private static final modelFileName:Ljava/lang/String; = ""


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    const-string v0, "SemInputMotionPalmMute"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionPalmMute;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method protected delivery([Ljava/lang/Object;)V
    .registers 2
    .param p1, "rawdata"    # [Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public destroy()V
    .registers 1

    .line 23
    invoke-super {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->destroy()V

    .line 24
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 27
    const-string v0, "dumping SemInputMotionPalmMute"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    const-string v0, "Not Supported"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 30
    return-void
.end method

.method protected getMotionControl(Ljava/lang/String;)I
    .registers 3
    .param p1, "subtype"    # Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareTensorflow(Ljava/nio/MappedByteBuffer;)Z
    .registers 3
    .param p1, "mappedByteBuffer"    # Ljava/nio/MappedByteBuffer;

    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method protected setMotionControl(Ljava/lang/String;I)V
    .registers 3
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "control"    # I

    .line 18
    return-void
.end method

.method protected startDelivery()V
    .registers 1

    .line 16
    return-void
.end method

.method protected stopDelivery()V
    .registers 1

    .line 20
    return-void
.end method
