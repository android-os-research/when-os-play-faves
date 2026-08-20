.class public final Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$c;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;
    .registers 1

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$c;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    return-object v0
.end method
