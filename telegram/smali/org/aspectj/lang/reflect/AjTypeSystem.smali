.class public Lorg/aspectj/lang/reflect/AjTypeSystem;
.super Ljava/lang/Object;
.source "AjTypeSystem.java"


# static fields
.field private static ajTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/aspectj/lang/reflect/AjType;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/aspectj/lang/reflect/AjTypeSystem;->ajTypes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/aspectj/lang/reflect/AjType",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v3, Lorg/aspectj/lang/reflect/AjTypeSystem;->ajTypes:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 40
    .local v2, "weakRefToAjType":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/aspectj/lang/reflect/AjType;>;"
    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/reflect/AjType;

    .line 42
    .local v0, "theAjType":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<TT;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 53
    .end local v0    # "theAjType":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<TT;>;"
    .local v1, "theAjType":Ljava/lang/Object;, "Lorg/aspectj/lang/reflect/AjType<TT;>;"
    :goto_0
    return-object v1

    .line 45
    .end local v1    # "theAjType":Ljava/lang/Object;, "Lorg/aspectj/lang/reflect/AjType<TT;>;"
    .restart local v0    # "theAjType":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<TT;>;"
    :cond_0
    new-instance v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    .end local v0    # "theAjType":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<TT;>;"
    invoke-direct {v0, p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;-><init>(Ljava/lang/Class;)V

    .line 46
    .restart local v0    # "theAjType":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<TT;>;"
    sget-object v3, Lorg/aspectj/lang/reflect/AjTypeSystem;->ajTypes:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 47
    .restart local v1    # "theAjType":Ljava/lang/Object;, "Lorg/aspectj/lang/reflect/AjType<TT;>;"
    goto :goto_0

    .line 51
    .end local v0    # "theAjType":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<TT;>;"
    .end local v1    # "theAjType":Ljava/lang/Object;, "Lorg/aspectj/lang/reflect/AjType<TT;>;"
    :cond_1
    new-instance v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    invoke-direct {v0, p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;-><init>(Ljava/lang/Class;)V

    .line 52
    .restart local v0    # "theAjType":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<TT;>;"
    sget-object v3, Lorg/aspectj/lang/reflect/AjTypeSystem;->ajTypes:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 53
    .restart local v1    # "theAjType":Ljava/lang/Object;, "Lorg/aspectj/lang/reflect/AjType<TT;>;"
    goto :goto_0
.end method
