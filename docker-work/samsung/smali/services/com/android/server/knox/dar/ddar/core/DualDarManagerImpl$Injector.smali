.class public Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;
.super Ljava/lang/Object;
.source "DualDarManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public binderClearCallingIdentity()J
    .registers 3

    .line 89
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public binderRestoreCallingIdentity(J)V
    .registers 3

    .line 93
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method
