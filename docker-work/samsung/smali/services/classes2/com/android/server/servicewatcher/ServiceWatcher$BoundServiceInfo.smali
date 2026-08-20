.class public Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundServiceInfo"
.end annotation


# instance fields
.field public final mAction:Ljava/lang/String;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/ComponentName;)V
    .registers 4

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    .line 156
    iput p2, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    .line 157
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .registers 4

    .line 150
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 151
    invoke-virtual {p2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    .line 150
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 180
    :cond_4
    instance-of v1, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 184
    :cond_a
    check-cast p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    .line 185
    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    iget v3, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    if-ne v1, v3, :cond_27

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    .line 186
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 187
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    return v0
.end method

.method public getAction()Ljava/lang/String;
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 172
    iget p0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_7

    const-string p0, "none"

    return-object p0

    .line 200
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
