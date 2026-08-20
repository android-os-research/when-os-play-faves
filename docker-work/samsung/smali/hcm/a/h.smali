.class La/h;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# static fields
.field private static b:I = -0x1


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, La/h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "low_power"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, La/h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "ultra_powersaving_mode"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0, v0}, La/h;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 9

    iget-object p1, p0, La/h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "low_power"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, La/h;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ultra_powersaving_mode"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {}, La/i;->a()Ljava/lang/String;

    move-result-object v5

    shl-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p1

    sget v1, La/h;->b:I

    if-ne v1, v0, :cond_25

    return-void

    :cond_25
    sput v0, La/h;->b:I

    const-string v0, "None"

    invoke-static {v0}, La/i;->b(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    if-lez p0, :cond_36

    const/4 v2, 0x3

    invoke-static {v2}, La/i;->d(I)I

    invoke-static {v1}, La/i;->f(I)I

    :cond_36
    const/4 v2, 0x2

    if-lez p1, :cond_49

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v2}, La/i;->d(I)I

    if-eqz v0, :cond_46

    invoke-static {v1}, La/i;->f(I)I

    goto :goto_49

    :cond_46
    invoke-static {v2}, La/i;->f(I)I

    :cond_49
    :goto_49
    add-int v0, p0, p1

    if-nez v0, :cond_5f

    const-string v0, "Release"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v1}, La/i;->d(I)I

    if-eqz v0, :cond_5c

    invoke-static {v2}, La/i;->f(I)I

    goto :goto_5f

    :cond_5c
    invoke-static {v1}, La/i;->f(I)I

    :cond_5f
    :goto_5f
    invoke-static {}, La/i;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, La/h;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onChange low="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ult="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " trig="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/i;->e()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " apm="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/i;->h()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/j;->i()I

    move-result v1

    invoke-static {}, La/i;->j()Lh/c;

    move-result-object p1

    invoke-virtual {p1}, Lh/c;->c()I

    move-result v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StateChange ApmSwitch="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/i;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " PSM="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/i;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/i;->e()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " batt="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, La/i;->k()La/d;

    move-result-object p1

    const-string v0, "PSMS"

    invoke-virtual {p1, v0, p0}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/i;->l()Z

    move-result p0

    if-eqz p0, :cond_101

    invoke-static {}, La/i;->m()La/f;

    move-result-object v0

    invoke-static {}, La/i;->h()I

    move-result v2

    invoke-static {}, La/i;->c()I

    move-result v3

    invoke-static {}, La/i;->e()I

    move-result v4

    invoke-virtual/range {v0 .. v6}, La/f;->j(IIIILjava/lang/String;I)V

    :cond_101
    return-void
.end method
