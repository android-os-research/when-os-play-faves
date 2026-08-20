.class public Lcom/sec/ims/presence/DeviceTuple;
.super Ljava/lang/Object;
.source "DeviceTuple.java"


# instance fields
.field public mDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mDeviceCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceId:Ljava/lang/String;

.field public mNotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mTimestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    .line 33
    iput-object v0, p0, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    .line 34
    iput-object v0, p0, Lcom/sec/ims/presence/DeviceTuple;->mTimestamp:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "deviceCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/sec/ims/presence/DeviceTuple;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p2, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p3, "timestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    .local p2, "deviceCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/sec/ims/presence/DeviceTuple;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 57
    iput-object p3, p0, Lcom/sec/ims/presence/DeviceTuple;->mTimestamp:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p5, "timestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 72
    .local p2, "deviceCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "descriptions":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p4, "notes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0, p1, p2, p5}, Lcom/sec/ims/presence/DeviceTuple;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 73
    iput-object p3, p0, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    .line 74
    iput-object p4, p0, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 103
    return v0

    .line 105
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 106
    return v1

    .line 108
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 109
    return v1

    .line 111
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/sec/ims/presence/DeviceTuple;

    .line 112
    .local v2, "other":Lcom/sec/ims/presence/DeviceTuple;
    iget-object v3, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 113
    iget-object v3, v2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 114
    return v1

    .line 116
    :cond_1f
    iget-object v4, v2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 117
    return v1

    .line 120
    :cond_28
    iget-object v3, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    if-nez v3, :cond_31

    .line 121
    iget-object v3, v2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    if-eqz v3, :cond_3a

    .line 122
    return v1

    .line 124
    :cond_31
    iget-object v4, v2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 125
    return v1

    .line 128
    :cond_3a
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 84
    const/16 v0, 0x1f

    .line 85
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 86
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    move v3, v4

    goto :goto_10

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v2, v3

    .line 87
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    .line 88
    iget-object v3, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    if-nez v3, :cond_19

    move v3, v4

    goto :goto_1d

    :cond_19
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1d
    add-int/2addr v1, v3

    .line 89
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    if-nez v3, :cond_26

    move v3, v4

    goto :goto_2a

    :cond_26
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_2a
    add-int/2addr v2, v3

    .line 90
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    if-nez v3, :cond_33

    move v3, v4

    goto :goto_37

    :cond_33
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_37
    add-int/2addr v1, v3

    .line 91
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/ims/presence/DeviceTuple;->mTimestamp:Ljava/lang/String;

    if-nez v3, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_43
    add-int/2addr v2, v4

    .line 92
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
