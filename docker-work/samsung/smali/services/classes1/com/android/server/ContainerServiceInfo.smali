.class public Lcom/android/server/ContainerServiceInfo;
.super Ljava/lang/Object;
.source "ContainerServiceInfo.java"


# instance fields
.field public category:Ljava/lang/String;

.field public name:Landroid/content/ComponentName;

.field public userid:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;Ljava/lang/String;)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/android/server/ContainerServiceInfo;->userid:I

    .line 12
    iput-object p2, p0, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    .line 13
    iput-object p3, p0, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    .line 28
    :try_start_7
    check-cast p1, Lcom/android/server/ContainerServiceInfo;

    .line 29
    iget v2, p0, Lcom/android/server/ContainerServiceInfo;->userid:I

    iget v3, p1, Lcom/android/server/ContainerServiceInfo;->userid:I

    if-ne v2, v3, :cond_22

    iget-object p0, p0, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    .line 30
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_1f} :catch_24

    if-eqz p0, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    return v0

    :catch_24
    :cond_24
    return v1
.end method

.method public hashCode()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 17
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContainerServiceInfo ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ContainerServiceInfo;->userid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    .line 18
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
