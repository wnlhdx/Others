using Godot;
using System;

public class Ball : Node2D
{
		// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
	
	private Vector2 _velocity;

	public void SetInitialVelocity(Vector2 velocity)
	{
		_velocity = velocity;
	}

	public void Move(float delta)
	{
		Position += _velocity * delta;

		// 检测边界碰撞
		if (Position.y < 0 || Position.y > GetViewportRect().Size.y)
		{
			_velocity.y = -_velocity.y; // 上下反弹
		}
	}

	public void Bounce()
	{
		_velocity.x = -_velocity.x; // 水平反弹
	}

	public void ApplyGravity(Gravity gravity, float delta)
	{
		Vector2 direction = gravity.Position - Position;
		_velocity += direction.Normalized() * gravity.Strength * delta;
	}

	public Rect2 GetRect()
	{
		return new Rect2(Position, new Vector2(10, 10)); // 假设球是10x10的矩形
	}
}
