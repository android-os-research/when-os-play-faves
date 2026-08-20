.class Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;
.super Ljava/lang/Object;
.source "SemWifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Iface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface$IfaceType;
    }
.end annotation


# static fields
.field public static final IFACE_TYPE_AP:I = 0x0

.field public static final IFACE_TYPE_STA_FOR_CONNECTIVITY:I = 0x1

.field public static final IFACE_TYPE_STA_FOR_SCAN:I = 0x2


# instance fields
.field public externalListener:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;

.field public final id:I

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->id:I

    .line 106
    iput p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->type:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->type:I

    if-eqz v1, :cond_18

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    const/4 v2, 0x2

    if-eq v1, v2, :cond_12

    const-string v1, "<UNKNOWN>"

    goto :goto_1a

    :cond_12
    const-string v1, "STA_SCAN"

    goto :goto_1a

    :cond_15
    const-string v1, "STA_CONNECTIVITY"

    goto :goto_1a

    :cond_18
    const-string v1, "AP"

    :goto_1a
    const-string v2, "Iface:"

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{"

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Name="

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Id="

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Type="

    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 134
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
