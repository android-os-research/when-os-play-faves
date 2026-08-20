.class public final synthetic Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Ljava/net/Socket;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda0;->f$0:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda0;->f$0:Ljava/net/Socket;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->$r8$lambda$91bBeoiK9XWIn-M3OS5sDwalU-w(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
