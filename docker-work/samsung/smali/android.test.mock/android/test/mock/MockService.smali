.class public Landroid/test/mock/MockService;
.super Ljava/lang/Object;
.source "MockService.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static attachForTesting(Landroid/app/Service;Landroid/content/Context;Ljava/lang/String;Landroid/app/Application;)V
    .registers 11
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceClassName"    # Ljava/lang/String;
    .param p3, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Service;",
            ">(",
            "Landroid/app/Service;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            ")V"
        }
    .end annotation

    .line 37
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 45
    return-void
.end method
