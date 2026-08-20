.class public final synthetic La/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$readHqmFileCallback;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/q;->a:Ljava/lang/String;

    iput-object p2, p0, La/q;->b:Landroid/os/HidlSupport$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(ZLjava/lang/String;)V
    .registers 4

    iget-object v0, p0, La/q;->a:Ljava/lang/String;

    iget-object p0, p0, La/q;->b:Landroid/os/HidlSupport$Mutable;

    invoke-static {v0, p0, p1, p2}, La/s;->b(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;ZLjava/lang/String;)V

    return-void
.end method
