.class public interface abstract Lcom/samsung/android/game/gos/IGosSystemService;
.super Ljava/lang/Object;
.source "IGosSystemService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gos/IGosSystemService$Stub;,
        Lcom/samsung/android/game/gos/IGosSystemService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.game.gos.IGosSystemService"


# virtual methods
.method public abstract requestOnlyForDumpOrTest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestWithJsonNoReturn(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
