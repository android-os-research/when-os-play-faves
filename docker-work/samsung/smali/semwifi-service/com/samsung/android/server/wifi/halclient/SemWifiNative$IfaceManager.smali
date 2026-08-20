.class Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;
.super Ljava/lang/Object;
.source "SemWifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfaceManager"
.end annotation


# instance fields
.field private final mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;",
            ">;"
        }
    .end annotation
.end field

.field private mNextId:I


# direct methods
.method static bridge synthetic -$$Nest$mallocateIface(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->allocateIface(I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindAnyStaIfaceName(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->findAnyStaIfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetIface(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->getIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveIface(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->removeIface(I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;-><init>()V

    return-void
.end method

.method private allocateIface(I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;
    .registers 4

    .line 150
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mNextId:I

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;-><init>(II)V

    .line 151
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mNextId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mNextId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mNextId:I

    return-object v0
.end method

.method private findAllStaIfaceNames()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 235
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    .line 236
    iget v2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_23

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 238
    :cond_23
    iget-object v1, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_29
    return-object v0
.end method

.method private findAnyIfaceOfType(I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;
    .registers 4

    .line 198
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    .line 199
    iget v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->type:I

    if-ne v1, p1, :cond_a

    return-object v0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private findAnyStaIfaceName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 223
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->findAnyIfaceOfType(I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x2

    .line 225
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->findAnyIfaceOfType(I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    move-result-object v0

    :cond_c
    if-nez v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 230
    :cond_10
    iget-object p0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    return-object p0
.end method

.method private getIface(I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;
    .registers 2

    .line 163
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    return-object p0
.end method

.method private getIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;
    .registers 4

    .line 168
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    .line 169
    iget-object v1, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private getIfaceIdIter()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private hasAnyApIface()Z
    .registers 2

    const/4 v0, 0x0

    .line 218
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->hasAnyIfaceOfType(I)Z

    move-result p0

    return p0
.end method

.method private hasAnyIface()Z
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private hasAnyIfaceOfType(I)Z
    .registers 3

    .line 188
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    .line 189
    iget v0, v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->type:I

    if-ne v0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private hasAnyStaIfaceForConnectivity()Z
    .registers 2

    const/4 v0, 0x1

    .line 208
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->hasAnyIfaceOfType(I)Z

    move-result p0

    return p0
.end method

.method private hasAnyStaIfaceForScan()Z
    .registers 2

    const/4 v0, 0x2

    .line 213
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->hasAnyIfaceOfType(I)Z

    move-result p0

    return p0
.end method

.method private removeIface(I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    return-object p0
.end method


# virtual methods
.method public removeExistingIface(I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;
    .registers 5

    .line 248
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_10

    const-string v0, "SemWifiNative"

    const-string v1, "More than 1 existing interface found"

    .line 249
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 252
    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 253
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 254
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_1b

    .line 255
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    .line 256
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    :cond_3d
    return-object v0
.end method
