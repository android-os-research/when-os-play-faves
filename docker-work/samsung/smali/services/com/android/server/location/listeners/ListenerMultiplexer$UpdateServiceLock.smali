.class public final Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;
.super Ljava/lang/Object;
.source "ListenerMultiplexer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/listeners/ListenerMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UpdateServiceLock"
.end annotation


# instance fields
.field public mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/listeners/ListenerMultiplexer;Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;)V"
        }
    .end annotation

    .line 799
    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    iput-object p2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 805
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 807
    iput-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    .line 808
    invoke-virtual {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_a
    return-void
.end method
