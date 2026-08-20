.class final enum Lorg/junit/internal/Throwables$State$4;
.super Lorg/junit/internal/Throwables$State;
.source "Throwables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/Throwables$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/junit/internal/Throwables$State;-><init>(Ljava/lang/String;ILorg/junit/internal/Throwables$State-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/junit/internal/Throwables$State$4-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/junit/internal/Throwables$State$4;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public processLine(Ljava/lang/String;)Lorg/junit/internal/Throwables$State;
    .registers 2
    .param p1, "methodName"    # Ljava/lang/String;

    .line 217
    return-object p0
.end method
