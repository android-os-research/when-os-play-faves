.class public interface abstract Lcom/samsung/android/net/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/net/a$c;,
        Lcom/samsung/android/net/a$b;,
        Lcom/samsung/android/net/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.samsung.android.net.ISemInsyncEventListener"


# virtual methods
.method public abstract a()Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
