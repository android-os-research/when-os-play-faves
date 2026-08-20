.class Lcom/samsung/android/hardware/secinputdev/SysinputHALEmpty;
.super Ljava/lang/Object;
.source "SysinputHALFactory.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SysinputHALEmpty"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "SysinputHALEmpty"

    const-string v1, "Empty Hal Instance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method


# virtual methods
.method public closeTaas()I
    .registers 3

    .line 201
    const-string v0, "SysinputHALEmpty"

    const-string v1, "closeTaas: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, -0x3

    return v0
.end method

.method public getKeyCodePressed(I)Ljava/lang/String;
    .registers 4
    .param p1, "keycode"    # I

    .line 100
    const-string v0, "SysinputHALEmpty"

    const-string v1, "getKeyCodePressed: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "NG"

    return-object v0
.end method

.method public getSpenCommandList()Ljava/lang/String;
    .registers 3

    .line 166
    const-string v0, "SysinputHALEmpty"

    const-string v1, "getSpenCommandList: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v0, "NG"

    return-object v0
.end method

.method public getSpenPosition()Ljava/lang/String;
    .registers 3

    .line 161
    const-string v0, "SysinputHALEmpty"

    const-string v1, "getSpenPosition: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "NG"

    return-object v0
.end method

.method public getSpenSupportFeature()I
    .registers 3

    .line 171
    const-string v0, "SysinputHALEmpty"

    const-string v1, "getSpenSupportFeature: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getTspAodActiveArea(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 131
    const-string v0, "SysinputHALEmpty"

    const-string v1, "getTspAodActiveArea: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "NG"

    return-object v0
.end method

.method public getTspCommandList(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 126
    const-string v0, "SysinputHALEmpty"

    const-string v1, "getTspCommandList: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "NG"

    return-object v0
.end method

.method public getTspFodInformation(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 136
    const-string v0, "SysinputHALEmpty"

    const-string v1, "getTspFodInformation: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v0, "NG"

    return-object v0
.end method

.method public getTspFodPosition(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 141
    const-string v0, "SysinputHALEmpty"

    const-string v1, "getTspFodPosition: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v0, "NG"

    return-object v0
.end method

.method public getTspRawdata(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 186
    const-string v0, "SysinputHALEmpty"

    const-string v1, "getTspRawdata: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getTspScrubPosition(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 115
    const-string v0, "SysinputHALEmpty"

    const-string v1, "getTspScrubPosition: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v0, "NG"

    return-object v0
.end method

.method public getTspSupportFeature(I)I
    .registers 4
    .param p1, "devid"    # I

    .line 121
    const-string v0, "SysinputHALEmpty"

    const-string v1, "getTspSupportFeature: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()F
    .registers 3

    .line 95
    const-string v0, "SysinputHALEmpty"

    const-string v1, "getVersion: 0.0f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public initTspRawData(II)I
    .registers 5
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 181
    const-string v0, "SysinputHALEmpty"

    const-string v1, "initTspRawData: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, -0x3

    return v0
.end method

.method public openTaas()I
    .registers 3

    .line 196
    const-string v0, "SysinputHALEmpty"

    const-string v1, "openTaas: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, -0x3

    return v0
.end method

.method public pollTspIrq(I)I
    .registers 4
    .param p1, "devid"    # I

    .line 191
    const-string v0, "SysinputHALEmpty"

    const-string v1, "pollTspIrq: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, -0x3

    return v0
.end method

.method public readTaas()Ljava/lang/String;
    .registers 3

    .line 206
    const-string v0, "SysinputHALEmpty"

    const-string v1, "readTaas: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v0, "NG"

    return-object v0
.end method

.method public runSpenCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "cmdname"    # Ljava/lang/String;

    .line 151
    const-string v0, "SysinputHALEmpty"

    const-string v1, "runSpenCmd: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v0, "NG"

    return-object v0
.end method

.method public runSpenCmdNoRead(Ljava/lang/String;)I
    .registers 4
    .param p1, "cmdname"    # Ljava/lang/String;

    .line 156
    const-string v0, "SysinputHALEmpty"

    const-string v1, "runSpenCmdNoRead: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, -0x3

    return v0
.end method

.method public runTspCmd(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "devid"    # I
    .param p2, "cmdname"    # Ljava/lang/String;

    .line 105
    const-string v0, "SysinputHALEmpty"

    const-string v1, "runTspCmd: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "NG"

    return-object v0
.end method

.method public runTspCmdNoRead(ILjava/lang/String;)I
    .registers 5
    .param p1, "devid"    # I
    .param p2, "cmdname"    # Ljava/lang/String;

    .line 110
    const-string v0, "SysinputHALEmpty"

    const-string v1, "runTspCmdNoRead: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, -0x3

    return v0
.end method

.method public setSpenEnable(IZ)I
    .registers 5
    .param p1, "enable"    # I
    .param p2, "isBefore"    # Z

    .line 176
    const-string v0, "SysinputHALEmpty"

    const-string v1, "setSpenEnable: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, -0x3

    return v0
.end method

.method public setTspEnable(IIZ)I
    .registers 6
    .param p1, "devid"    # I
    .param p2, "enable"    # I
    .param p3, "isBefore"    # Z

    .line 146
    const-string v0, "SysinputHALEmpty"

    const-string v1, "setTspEnable: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, -0x3

    return v0
.end method

.method public writeTaas(Ljava/lang/String;)I
    .registers 4
    .param p1, "wstr"    # Ljava/lang/String;

    .line 211
    const-string v0, "SysinputHALEmpty"

    const-string v1, "writeTaas: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, -0x3

    return v0
.end method
