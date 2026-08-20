.class public Lcom/android/server/display/layout/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/layout/Layout$Display;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Layout"

.field public static sNextNonDefaultDisplayId:I = 0x5


# instance fields
.field public final mDisplays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/layout/Layout$Display;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    return-void
.end method

.method public static assignDisplayIdLocked(Z)I
    .registers 2

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    .line 55
    :cond_4
    sget p0, Lcom/android/server/display/layout/Layout;->sNextNonDefaultDisplayId:I

    add-int/lit8 v0, p0, 0x1

    sput v0, Lcom/android/server/display/layout/Layout;->sNextNonDefaultDisplayId:I

    :goto_a
    return p0
.end method


# virtual methods
.method public contains(Landroid/view/DisplayAddress;)Z
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_21

    .line 141
    iget-object v3, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/layout/Layout$Display;

    invoke-virtual {v3}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_21
    return v1
.end method

.method public createDisplayLocked(Landroid/view/DisplayAddress;ZZ)Lcom/android/server/display/layout/Layout$Display;
    .registers 5

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZZ)Lcom/android/server/display/layout/Layout$Display;

    move-result-object p0

    return-object p0
.end method

.method public createDisplayLocked(Landroid/view/DisplayAddress;ZZZ)Lcom/android/server/display/layout/Layout$Display;
    .registers 9

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/display/layout/Layout;->contains(Landroid/view/DisplayAddress;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Layout"

    if-eqz v0, :cond_1e

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempting to add second definition for display-device: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1e
    if-eqz p2, :cond_3c

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring attempt to add a second default display: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3c
    if-eqz p3, :cond_40

    const/4 v0, 0x1

    goto :goto_44

    .line 100
    :cond_40
    invoke-static {p2}, Lcom/android/server/display/layout/Layout;->assignDisplayIdLocked(Z)I

    move-result v0

    .line 102
    :goto_44
    new-instance v1, Lcom/android/server/display/layout/Layout$Display;

    invoke-direct {v1, p1, v0, p4}, Lcom/android/server/display/layout/Layout$Display;-><init>(Landroid/view/DisplayAddress;IZ)V

    .line 106
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDisplayLocked, logicalDisplayId="

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isDefault="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isExtra="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", address="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", caller="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    .line 108
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getAt(I)Lcom/android/server/display/layout/Layout$Display;
    .registers 2

    .line 193
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/layout/Layout$Display;

    return-object p0
.end method

.method public getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;
    .registers 5

    const/4 v0, 0x0

    .line 171
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 172
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/layout/Layout$Display;

    .line 180
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getById(I)Lcom/android/server/display/layout/Layout$Display;
    .registers 5

    const/4 v0, 0x0

    .line 155
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 156
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/layout/Layout$Display;

    .line 157
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v2

    if-ne p1, v2, :cond_18

    return-object v1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeDisplayLocked(I)V
    .registers 2

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 122
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public size()I
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
