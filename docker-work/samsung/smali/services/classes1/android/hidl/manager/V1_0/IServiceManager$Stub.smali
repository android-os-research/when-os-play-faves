.class public abstract Landroid/hidl/manager/V1_0/IServiceManager$Stub;
.super Landroid/os/HwBinder;
.source "IServiceManager.java"

# interfaces
.implements Landroid/hidl/manager/V1_0/IServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hidl/manager/V1_0/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 913
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 3

    .line 966
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 967
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 968
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 969
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 941
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_34

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_20
    .array-data 1
        -0x7bt
        0x39t
        0x4ft
        -0x76t
        0xdt
        0x15t
        -0x19t
        -0x5t
        0x2et
        -0x1ct
        0x5ct
        0x52t
        -0x2ft
        -0x5t
        -0x75t
        -0x71t
        -0x2dt
        -0x3ft
        0x3ct
        0x33t
        0x3et
        0x63t
        -0x39t
        -0x74t
        0x4at
        -0x5ft
        -0x1t
        -0x7at
        -0x7ct
        0xct
        -0xat
        -0x24t
    .end array-data

    :array_34
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 921
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hidl.manager@1.0::IServiceManager"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 976
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p4, "android.hidl.manager@1.0::IServiceManager"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_192

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1a6

    goto/16 :goto_190

    .line 1210
    :sswitch_d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->notifySyspropsChanged()V

    goto/16 :goto_190

    .line 1199
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1202
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1203
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1204
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_190

    .line 1189
    :sswitch_27
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->ping()V

    .line 1192
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1193
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_190

    .line 1176
    :sswitch_35
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->setHALInstrumentation()V

    goto/16 :goto_190

    .line 1142
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1145
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1147
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1149
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 1150
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 1151
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1152
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge v0, p2, :cond_83

    mul-int/lit8 v1, v0, 0x20

    int-to-long v1, v1

    .line 1156
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7b

    .line 1158
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7b

    .line 1162
    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 1159
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    const-wide/16 v0, 0x0

    .line 1166
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1168
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1170
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_190

    .line 1131
    :sswitch_90
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1134
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1135
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_190

    .line 1119
    :sswitch_a2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1122
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1123
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1124
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1125
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_190

    .line 1108
    :sswitch_b8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1111
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1112
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1113
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_190

    .line 1096
    :pswitch_ca
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1099
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1100
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->registerPassthroughClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1102
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_190

    .line 1085
    :pswitch_e0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-interface {p0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object p0

    .line 1088
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1089
    invoke-static {p3, p0}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1090
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_190

    .line 1071
    :pswitch_f2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1074
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    move-result-object p2

    .line 1076
    invoke-interface {p0, p1, p4, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p0

    .line 1077
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1078
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1079
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_190

    .line 1059
    :pswitch_114
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1062
    invoke-interface {p0, p1}, Landroid/hidl/manager/V1_0/IServiceManager;->listByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1063
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1064
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1065
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_190

    .line 1048
    :pswitch_129
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-interface {p0}, Landroid/hidl/manager/V1_0/IServiceManager;->list()Ljava/util/ArrayList;

    move-result-object p0

    .line 1051
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1052
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1053
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_190

    .line 1035
    :pswitch_13a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1038
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1039
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result p0

    .line 1040
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1041
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 1042
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_190

    .line 1022
    :pswitch_153
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1025
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p2

    .line 1026
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->add(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z

    move-result p0

    .line 1027
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1028
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1029
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_190

    .line 1009
    :pswitch_170
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1012
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1013
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p0

    .line 1014
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez p0, :cond_186

    const/4 p0, 0x0

    goto :goto_18a

    .line 1015
    :cond_186
    invoke-interface {p0}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    :goto_18a
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1016
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_190
    return-void

    nop

    :pswitch_data_192
    .packed-switch 0x1
        :pswitch_170
        :pswitch_153
        :pswitch_13a
        :pswitch_129
        :pswitch_114
        :pswitch_f2
        :pswitch_e0
        :pswitch_ca
    .end packed-switch

    :sswitch_data_1a6
    .sparse-switch
        0xf43484e -> :sswitch_b8
        0xf444247 -> :sswitch_a2
        0xf445343 -> :sswitch_90
        0xf485348 -> :sswitch_3d
        0xf494e54 -> :sswitch_35
        0xf504e47 -> :sswitch_27
        0xf524546 -> :sswitch_15
        0xf535953 -> :sswitch_d
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    .line 988
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 995
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
