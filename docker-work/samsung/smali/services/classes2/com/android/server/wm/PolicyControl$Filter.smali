.class public Lcom/android/server/wm/PolicyControl$Filter;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PolicyControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Filter"
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "*"

.field public static final APPS:Ljava/lang/String; = "apps"


# instance fields
.field public final mAllowList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mBlockList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    .line 224
    iput-object p2, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 287
    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 288
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string v2, ","

    .line 289
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_3b

    aget-object v4, p0, v3

    .line 290
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    .line 291
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_35

    .line 292
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 295
    :cond_35
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 298
    :cond_3b
    new-instance p0, Lcom/android/server/wm/PolicyControl$Filter;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "Filter["

    .line 258
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    const-string v1, "allowList"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 v0, 0x2c

    .line 260
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    const-string v1, "blockList"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 p0, 0x5d

    .line 262
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public final dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 266
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "=("

    .line 267
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_d
    if-ge p1, p0, :cond_22

    if-lez p1, :cond_16

    const/16 v0, 0x2c

    .line 270
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 271
    :cond_16
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_22
    const/16 p0, 0x29

    .line 273
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public matches(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 232
    :cond_4
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_f

    const/16 v3, 0x63

    if-gt v1, v3, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v0

    :goto_10
    const-string v3, "apps"

    if-eqz v1, :cond_1d

    .line 236
    iget-object v4, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    return v0

    .line 239
    :cond_1d
    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/PolicyControl$Filter;->onBlockList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    return v0

    :cond_26
    if-eqz v1, :cond_31

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    return v2

    .line 246
    :cond_31
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->onAllowList(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final onAllowList(Ljava/lang/String;)Z
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public final onBlockList(Ljava/lang/String;)Z
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 278
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 279
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    .line 280
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
