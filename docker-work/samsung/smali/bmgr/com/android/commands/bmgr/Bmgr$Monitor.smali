.class interface abstract annotation Lcom/android/commands/bmgr/Bmgr$Monitor;
.super Ljava/lang/Object;
.source "Bmgr.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/bmgr/Bmgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "Monitor"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final NORMAL:I = 0x1

.field public static final OFF:I = 0x0

.field public static final VERBOSE:I = 0x2
